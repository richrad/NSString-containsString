#import "NSString+Better.h"

@implementation NSString (Better)

-(BOOL)containsString:(NSString *)string
{
    if (!([self rangeOfString:string].location == NSNotFound))
    {
        return YES;
    } else
    {
        return NO;
    }
}

-(BOOL)containsStringFromArray:(NSArray *)array
{
    for (NSString *string in array)
    {
        if ([self containsString:string])
        {
            return YES;
        }
    }
    
    return NO;
}

@end
