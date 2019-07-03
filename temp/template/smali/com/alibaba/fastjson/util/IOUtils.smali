.class public Lcom/alibaba/fastjson/util/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/util/IOUtils$PropertiesInitializer;
    }
.end annotation


# static fields
.field public static final ASCII_CHARS:[C

.field public static final CA:[C

.field public static final DEFAULT_PROPERTIES:Ljava/util/Properties;

.field public static final DIGITS:[C

.field static final DigitOnes:[C

.field static final DigitTens:[C

.field public static final FASTJSON_COMPATIBLEWITHFIELDNAME:Ljava/lang/String; = "fastjson.compatibleWithFieldName"

.field public static final FASTJSON_COMPATIBLEWITHJAVABEAN:Ljava/lang/String; = "fastjson.compatibleWithJavaBean"

.field public static final FASTJSON_PROPERTIES:Ljava/lang/String; = "fastjson.properties"

.field public static final IA:[I

.field public static final UTF8:Ljava/nio/charset/Charset;

.field static final digits:[C

.field public static final firstIdentifierFlags:[Z

.field public static final identifierFlags:[Z

.field public static final replaceChars:[C

.field static final sizeTable:[I

.field public static final specicalFlags_doubleQuotes:[B

.field public static final specicalFlags_doubleQuotesFlags:[Z

.field public static final specicalFlags_singleQuotes:[B

.field public static final specicalFlags_singleQuotesFlags:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0xa

    const/16 v8, 0xa1

    const/4 v5, 0x0

    const/4 v7, 0x4

    const/4 v4, 0x1

    .line 45
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->DEFAULT_PROPERTIES:Ljava/util/Properties;

    .line 47
    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    .line 49
    const/16 v3, 0x10

    new-array v3, v3, [C

    fill-array-data v3, :array_0

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    .line 52
    const/16 v3, 0x100

    new-array v3, v3, [Z

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    .line 54
    const/4 v0, 0x0

    .local v0, "c":C
    :goto_0
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 55
    const/16 v3, 0x41

    if-lt v0, v3, :cond_1

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_1

    .line 56
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    aput-boolean v4, v3, v0

    .line 54
    :cond_0
    :goto_1
    add-int/lit8 v3, v0, 0x1

    int-to-char v0, v3

    goto :goto_0

    .line 57
    :cond_1
    const/16 v3, 0x61

    if-lt v0, v3, :cond_2

    const/16 v3, 0x7a

    if-gt v0, v3, :cond_2

    .line 58
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    aput-boolean v4, v3, v0

    goto :goto_1

    .line 59
    :cond_2
    const/16 v3, 0x5f

    if-ne v0, v3, :cond_0

    .line 60
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    aput-boolean v4, v3, v0

    goto :goto_1

    .line 65
    :cond_3
    const/16 v3, 0x100

    new-array v3, v3, [Z

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    .line 68
    const/4 v0, 0x0

    :goto_2
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_8

    .line 69
    const/16 v3, 0x41

    if-lt v0, v3, :cond_5

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_5

    .line 70
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v4, v3, v0

    .line 68
    :cond_4
    :goto_3
    add-int/lit8 v3, v0, 0x1

    int-to-char v0, v3

    goto :goto_2

    .line 71
    :cond_5
    const/16 v3, 0x61

    if-lt v0, v3, :cond_6

    const/16 v3, 0x7a

    if-gt v0, v3, :cond_6

    .line 72
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v4, v3, v0

    goto :goto_3

    .line 73
    :cond_6
    const/16 v3, 0x5f

    if-ne v0, v3, :cond_7

    .line 74
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v4, v3, v0

    goto :goto_3

    .line 75
    :cond_7
    const/16 v3, 0x30

    if-lt v0, v3, :cond_4

    const/16 v3, 0x39

    if-gt v0, v3, :cond_4

    .line 76
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v4, v3, v0

    goto :goto_3

    .line 83
    :cond_8
    :try_start_0
    new-instance v3, Lcom/alibaba/fastjson/util/IOUtils$PropertiesInitializer;

    invoke-direct {v3}, Lcom/alibaba/fastjson/util/IOUtils$PropertiesInitializer;-><init>()V

    invoke-virtual {v3}, Lcom/alibaba/fastjson/util/IOUtils$PropertiesInitializer;->autoConfig()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_4
    new-array v3, v8, [B

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    .line 131
    new-array v3, v8, [B

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    .line 132
    new-array v3, v8, [Z

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotesFlags:[Z

    .line 133
    new-array v3, v8, [Z

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotesFlags:[Z

    .line 135
    const/16 v3, 0x5d

    new-array v3, v3, [C

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    .line 137
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v7, v3, v5

    .line 138
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v7, v3, v4

    .line 139
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/4 v6, 0x2

    aput-byte v7, v3, v6

    .line 140
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/4 v6, 0x3

    aput-byte v7, v3, v6

    .line 141
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v7, v3, v7

    .line 142
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/4 v6, 0x5

    aput-byte v7, v3, v6

    .line 143
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/4 v6, 0x6

    aput-byte v7, v3, v6

    .line 144
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/4 v6, 0x7

    aput-byte v7, v3, v6

    .line 145
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v6, 0x8

    aput-byte v4, v3, v6

    .line 146
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v6, 0x9

    aput-byte v4, v3, v6

    .line 147
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v4, v3, v9

    .line 148
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v6, 0xb

    aput-byte v7, v3, v6

    .line 149
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v6, 0xc

    aput-byte v4, v3, v6

    .line 150
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v6, 0xd

    aput-byte v4, v3, v6

    .line 151
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v6, 0x22

    aput-byte v4, v3, v6

    .line 152
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v6, 0x5c

    aput-byte v4, v3, v6

    .line 154
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v7, v3, v5

    .line 155
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v7, v3, v4

    .line 156
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/4 v6, 0x2

    aput-byte v7, v3, v6

    .line 157
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/4 v6, 0x3

    aput-byte v7, v3, v6

    .line 158
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v7, v3, v7

    .line 159
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/4 v6, 0x5

    aput-byte v7, v3, v6

    .line 160
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/4 v6, 0x6

    aput-byte v7, v3, v6

    .line 161
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/4 v6, 0x7

    aput-byte v7, v3, v6

    .line 162
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v6, 0x8

    aput-byte v4, v3, v6

    .line 163
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v6, 0x9

    aput-byte v4, v3, v6

    .line 164
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v4, v3, v9

    .line 165
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v6, 0xb

    aput-byte v7, v3, v6

    .line 166
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v6, 0xc

    aput-byte v4, v3, v6

    .line 167
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v6, 0xd

    aput-byte v4, v3, v6

    .line 168
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v6, 0x5c

    aput-byte v4, v3, v6

    .line 169
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v6, 0x27

    aput-byte v4, v3, v6

    .line 171
    const/16 v1, 0xe

    .local v1, "i":I
    :goto_5
    const/16 v3, 0x1f

    if-gt v1, v3, :cond_9

    .line 172
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v7, v3, v1

    .line 173
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v7, v3, v1

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 176
    :cond_9
    const/16 v1, 0x7f

    :goto_6
    const/16 v3, 0xa0

    if-gt v1, v3, :cond_a

    .line 177
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v7, v3, v1

    .line 178
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v7, v3, v1

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 181
    :cond_a
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v8, :cond_d

    .line 182
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotesFlags:[Z

    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v3, v3, v1

    if-eqz v3, :cond_b

    move v3, v4

    :goto_8
    aput-boolean v3, v6, v1

    .line 183
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotesFlags:[Z

    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aget-byte v3, v3, v1

    if-eqz v3, :cond_c

    move v3, v4

    :goto_9
    aput-boolean v3, v6, v1

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_b
    move v3, v5

    .line 182
    goto :goto_8

    :cond_c
    move v3, v5

    .line 183
    goto :goto_9

    .line 186
    :cond_d
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v6, 0x30

    aput-char v6, v3, v5

    .line 187
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v6, 0x31

    aput-char v6, v3, v4

    .line 188
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/4 v4, 0x2

    const/16 v6, 0x32

    aput-char v6, v3, v4

    .line 189
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/4 v4, 0x3

    const/16 v6, 0x33

    aput-char v6, v3, v4

    .line 190
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v4, 0x34

    aput-char v4, v3, v7

    .line 191
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/4 v4, 0x5

    const/16 v6, 0x35

    aput-char v6, v3, v4

    .line 192
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/4 v4, 0x6

    const/16 v6, 0x36

    aput-char v6, v3, v4

    .line 193
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/4 v4, 0x7

    const/16 v6, 0x37

    aput-char v6, v3, v4

    .line 194
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v4, 0x8

    const/16 v6, 0x62

    aput-char v6, v3, v4

    .line 195
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v4, 0x9

    const/16 v6, 0x74

    aput-char v6, v3, v4

    .line 196
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v4, 0x6e

    aput-char v4, v3, v9

    .line 197
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v4, 0xb

    const/16 v6, 0x76

    aput-char v6, v3, v4

    .line 198
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v4, 0xc

    const/16 v6, 0x66

    aput-char v6, v3, v4

    .line 199
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v4, 0xd

    const/16 v6, 0x72

    aput-char v6, v3, v4

    .line 200
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v4, 0x22

    const/16 v6, 0x22

    aput-char v6, v3, v4

    .line 201
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v4, 0x27

    const/16 v6, 0x27

    aput-char v6, v3, v4

    .line 202
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v4, 0x2f

    const/16 v6, 0x2f

    aput-char v6, v3, v4

    .line 203
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v4, 0x5c

    const/16 v6, 0x5c

    aput-char v6, v3, v4

    .line 206
    const/16 v3, 0x60

    new-array v3, v3, [C

    fill-array-data v3, :array_1

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    .line 347
    const/16 v3, 0x24

    new-array v3, v3, [C

    fill-array-data v3, :array_2

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    .line 350
    const/16 v3, 0x64

    new-array v3, v3, [C

    fill-array-data v3, :array_3

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    .line 356
    const/16 v3, 0x64

    new-array v3, v3, [C

    fill-array-data v3, :array_4

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    .line 362
    new-array v3, v9, [I

    fill-array-data v3, :array_5

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->sizeTable:[I

    .line 401
    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->CA:[C

    .line 402
    const/16 v3, 0x100

    new-array v3, v3, [I

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    .line 404
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    const/4 v4, -0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 405
    const/4 v1, 0x0

    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->CA:[C

    array-length v2, v3

    .local v2, "iS":I
    :goto_a
    if-ge v1, v2, :cond_e

    .line 406
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->CA:[C

    aget-char v4, v4, v1

    aput v1, v3, v4

    .line 405
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 407
    :cond_e
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    const/16 v4, 0x3d

    aput v5, v3, v4

    .line 408
    return-void

    .line 84
    .end local v1    # "i":I
    .end local v2    # "iS":I
    :catch_0
    move-exception v3

    goto/16 :goto_4

    .line 49
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    .line 206
    :array_1
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x31s
        0x30s
        0x32s
        0x30s
        0x33s
        0x30s
        0x34s
        0x30s
        0x35s
        0x30s
        0x36s
        0x30s
        0x37s
        0x30s
        0x38s
        0x30s
        0x39s
        0x30s
        0x41s
        0x30s
        0x42s
        0x30s
        0x43s
        0x30s
        0x44s
        0x30s
        0x45s
        0x30s
        0x46s
        0x31s
        0x30s
        0x31s
        0x31s
        0x31s
        0x32s
        0x31s
        0x33s
        0x31s
        0x34s
        0x31s
        0x35s
        0x31s
        0x36s
        0x31s
        0x37s
        0x31s
        0x38s
        0x31s
        0x39s
        0x31s
        0x41s
        0x31s
        0x42s
        0x31s
        0x43s
        0x31s
        0x44s
        0x31s
        0x45s
        0x31s
        0x46s
        0x32s
        0x30s
        0x32s
        0x31s
        0x32s
        0x32s
        0x32s
        0x33s
        0x32s
        0x34s
        0x32s
        0x35s
        0x32s
        0x36s
        0x32s
        0x37s
        0x32s
        0x38s
        0x32s
        0x39s
        0x32s
        0x41s
        0x32s
        0x42s
        0x32s
        0x43s
        0x32s
        0x44s
        0x32s
        0x45s
        0x32s
        0x46s
    .end array-data

    .line 347
    :array_2
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    .line 350
    :array_3
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data

    .line 356
    :array_4
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data

    .line 362
    :array_5
    .array-data 4
        0x9
        0x63
        0x3e7
        0x270f
        0x1869f
        0xf423f
        0x98967f
        0x5f5e0ff
        0x3b9ac9ff
        0x7fffffff
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method public static close(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "x"    # Ljava/io/Closeable;

    .prologue
    .line 214
    if-eqz p0, :cond_0

    .line 216
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static decode(Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V
    .locals 5
    .param p0, "charsetDecoder"    # Ljava/nio/charset/CharsetDecoder;
    .param p1, "byteBuf"    # Ljava/nio/ByteBuffer;
    .param p2, "charByte"    # Ljava/nio/CharBuffer;

    .prologue
    .line 375
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 377
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v2

    if-nez v2, :cond_0

    .line 378
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 381
    :cond_0
    invoke-virtual {p0, p2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v2

    if-nez v2, :cond_1

    .line 384
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :cond_1
    return-void

    .line 386
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    :catch_0
    move-exception v1

    .line 389
    .local v1, "x":Ljava/nio/charset/CharacterCodingException;
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "utf8 decode error, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/nio/charset/CharacterCodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 21
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 544
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v16

    .line 545
    .local v16, "sLen":I
    if-nez v16, :cond_0

    .line 546
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v6, v0, [B

    .line 596
    :goto_0
    return-object v6

    .line 549
    :cond_0
    const/4 v14, 0x0

    .local v14, "sIx":I
    add-int/lit8 v7, v16, -0x1

    .line 552
    .local v7, "eIx":I
    :goto_1
    if-ge v14, v7, :cond_1

    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    aget v18, v18, v19

    if-gez v18, :cond_1

    .line 553
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 556
    :cond_1
    :goto_2
    if-lez v7, :cond_2

    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    aget v18, v18, v19

    if-gez v18, :cond_2

    .line 557
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 560
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x3d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    add-int/lit8 v18, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x3d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const/4 v12, 0x2

    .line 561
    .local v12, "pad":I
    :goto_3
    sub-int v18, v7, v14

    add-int/lit8 v2, v18, 0x1

    .line 562
    .local v2, "cCnt":I
    const/16 v18, 0x4c

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    const/16 v18, 0x4c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    div-int/lit8 v18, v2, 0x4e

    :goto_4
    shl-int/lit8 v17, v18, 0x1

    .line 564
    .local v17, "sepCnt":I
    :goto_5
    sub-int v18, v2, v17

    mul-int/lit8 v18, v18, 0x6

    shr-int/lit8 v18, v18, 0x3

    sub-int v11, v18, v12

    .line 565
    .local v11, "len":I
    new-array v6, v11, [B

    .line 568
    .local v6, "dArr":[B
    const/4 v4, 0x0

    .line 569
    .local v4, "d":I
    const/4 v3, 0x0

    .local v3, "cc":I
    div-int/lit8 v18, v11, 0x3

    mul-int/lit8 v8, v18, 0x3

    .local v8, "eLen":I
    move v5, v4

    .end local v4    # "d":I
    .local v5, "d":I
    move v15, v14

    .end local v14    # "sIx":I
    .local v15, "sIx":I
    :goto_6
    if-ge v5, v8, :cond_7

    .line 571
    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v19

    aget v18, v18, v19

    shl-int/lit8 v18, v18, 0x12

    sget-object v19, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v20

    aget v19, v19, v20

    shl-int/lit8 v19, v19, 0xc

    or-int v18, v18, v19

    sget-object v19, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v20

    aget v19, v19, v20

    shl-int/lit8 v19, v19, 0x6

    or-int v18, v18, v19

    sget-object v19, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v15, v14, 0x1

    .line 572
    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v20

    aget v19, v19, v20

    or-int v9, v18, v19

    .line 575
    .local v9, "i":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "d":I
    .restart local v4    # "d":I
    shr-int/lit8 v18, v9, 0x10

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v6, v5

    .line 576
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "d":I
    .restart local v5    # "d":I
    shr-int/lit8 v18, v9, 0x8

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v6, v4

    .line 577
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "d":I
    .restart local v4    # "d":I
    int-to-byte v0, v9

    move/from16 v18, v0

    aput-byte v18, v6, v5

    .line 580
    if-lez v17, :cond_a

    add-int/lit8 v3, v3, 0x1

    const/16 v18, 0x13

    move/from16 v0, v18

    if-ne v3, v0, :cond_a

    .line 581
    add-int/lit8 v14, v15, 0x2

    .line 582
    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    const/4 v3, 0x0

    :goto_7
    move v5, v4

    .end local v4    # "d":I
    .restart local v5    # "d":I
    move v15, v14

    .line 584
    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    goto :goto_6

    .line 560
    .end local v2    # "cCnt":I
    .end local v3    # "cc":I
    .end local v5    # "d":I
    .end local v6    # "dArr":[B
    .end local v8    # "eLen":I
    .end local v9    # "i":I
    .end local v11    # "len":I
    .end local v12    # "pad":I
    .end local v15    # "sIx":I
    .end local v17    # "sepCnt":I
    .restart local v14    # "sIx":I
    :cond_3
    const/4 v12, 0x1

    goto/16 :goto_3

    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 562
    .restart local v2    # "cCnt":I
    .restart local v12    # "pad":I
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_4

    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 586
    .end local v14    # "sIx":I
    .restart local v3    # "cc":I
    .restart local v5    # "d":I
    .restart local v6    # "dArr":[B
    .restart local v8    # "eLen":I
    .restart local v11    # "len":I
    .restart local v15    # "sIx":I
    .restart local v17    # "sepCnt":I
    :cond_7
    if-ge v5, v11, :cond_9

    .line 588
    const/4 v9, 0x0

    .line 589
    .restart local v9    # "i":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_8
    sub-int v18, v7, v12

    move/from16 v0, v18

    if-gt v15, v0, :cond_8

    .line 590
    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v19

    aget v18, v18, v19

    mul-int/lit8 v19, v10, 0x6

    rsub-int/lit8 v19, v19, 0x12

    shl-int v18, v18, v19

    or-int v9, v9, v18

    .line 589
    add-int/lit8 v10, v10, 0x1

    move v15, v14

    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    goto :goto_8

    .line 592
    :cond_8
    const/16 v13, 0x10

    .local v13, "r":I
    :goto_9
    if-ge v5, v11, :cond_9

    .line 593
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "d":I
    .restart local v4    # "d":I
    shr-int v18, v9, v13

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v6, v5

    .line 592
    add-int/lit8 v13, v13, -0x8

    move v5, v4

    .end local v4    # "d":I
    .restart local v5    # "d":I
    goto :goto_9

    .end local v9    # "i":I
    .end local v10    # "j":I
    .end local v13    # "r":I
    :cond_9
    move v4, v5

    .end local v5    # "d":I
    .restart local v4    # "d":I
    move v14, v15

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    goto/16 :goto_0

    .end local v14    # "sIx":I
    .restart local v9    # "i":I
    .restart local v15    # "sIx":I
    :cond_a
    move v14, v15

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    goto :goto_7
.end method

.method public static decodeBase64(Ljava/lang/String;II)[B
    .locals 20
    .param p0, "chars"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "charsLen"    # I

    .prologue
    .line 478
    if-nez p2, :cond_0

    .line 479
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v2, v0, [B

    .line 528
    :goto_0
    return-object v2

    .line 482
    :cond_0
    move/from16 v14, p1

    .local v14, "sIx":I
    add-int v17, p1, p2

    add-int/lit8 v7, v17, -0x1

    .line 485
    .local v7, "eIx":I
    :goto_1
    if-ge v14, v7, :cond_1

    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v18

    aget v17, v17, v18

    if-gez v17, :cond_1

    .line 486
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 489
    :cond_1
    :goto_2
    if-lez v7, :cond_2

    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v18

    aget v17, v17, v18

    if-gez v17, :cond_2

    .line 490
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 493
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x3d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    add-int/lit8 v17, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x3d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    const/4 v12, 0x2

    .line 494
    .local v12, "pad":I
    :goto_3
    sub-int v17, v7, v14

    add-int/lit8 v3, v17, 0x1

    .line 495
    .local v3, "cCnt":I
    const/16 v17, 0x4c

    move/from16 v0, p2

    move/from16 v1, v17

    if-le v0, v1, :cond_6

    const/16 v17, 0x4c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    div-int/lit8 v17, v3, 0x4e

    :goto_4
    shl-int/lit8 v16, v17, 0x1

    .line 497
    .local v16, "sepCnt":I
    :goto_5
    sub-int v17, v3, v16

    mul-int/lit8 v17, v17, 0x6

    shr-int/lit8 v17, v17, 0x3

    sub-int v11, v17, v12

    .line 498
    .local v11, "len":I
    new-array v2, v11, [B

    .line 501
    .local v2, "bytes":[B
    const/4 v5, 0x0

    .line 502
    .local v5, "d":I
    const/4 v4, 0x0

    .local v4, "cc":I
    div-int/lit8 v17, v11, 0x3

    mul-int/lit8 v8, v17, 0x3

    .local v8, "eLen":I
    move v6, v5

    .end local v5    # "d":I
    .local v6, "d":I
    move v15, v14

    .end local v14    # "sIx":I
    .local v15, "sIx":I
    :goto_6
    if-ge v6, v8, :cond_7

    .line 504
    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v18

    aget v17, v17, v18

    shl-int/lit8 v17, v17, 0x12

    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v19

    aget v18, v18, v19

    shl-int/lit8 v18, v18, 0xc

    or-int v17, v17, v18

    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v19

    aget v18, v18, v19

    shl-int/lit8 v18, v18, 0x6

    or-int v17, v17, v18

    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v19

    aget v18, v18, v19

    or-int v9, v17, v18

    .line 507
    .local v9, "i":I
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "d":I
    .restart local v5    # "d":I
    shr-int/lit8 v17, v9, 0x10

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v2, v6

    .line 508
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "d":I
    .restart local v6    # "d":I
    shr-int/lit8 v17, v9, 0x8

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v2, v5

    .line 509
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "d":I
    .restart local v5    # "d":I
    int-to-byte v0, v9

    move/from16 v17, v0

    aput-byte v17, v2, v6

    .line 512
    if-lez v16, :cond_a

    add-int/lit8 v4, v4, 0x1

    const/16 v17, 0x13

    move/from16 v0, v17

    if-ne v4, v0, :cond_a

    .line 513
    add-int/lit8 v14, v15, 0x2

    .line 514
    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    const/4 v4, 0x0

    :goto_7
    move v6, v5

    .end local v5    # "d":I
    .restart local v6    # "d":I
    move v15, v14

    .line 516
    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    goto :goto_6

    .line 493
    .end local v2    # "bytes":[B
    .end local v3    # "cCnt":I
    .end local v4    # "cc":I
    .end local v6    # "d":I
    .end local v8    # "eLen":I
    .end local v9    # "i":I
    .end local v11    # "len":I
    .end local v12    # "pad":I
    .end local v15    # "sIx":I
    .end local v16    # "sepCnt":I
    .restart local v14    # "sIx":I
    :cond_3
    const/4 v12, 0x1

    goto/16 :goto_3

    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 495
    .restart local v3    # "cCnt":I
    .restart local v12    # "pad":I
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_4

    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 518
    .end local v14    # "sIx":I
    .restart local v2    # "bytes":[B
    .restart local v4    # "cc":I
    .restart local v6    # "d":I
    .restart local v8    # "eLen":I
    .restart local v11    # "len":I
    .restart local v15    # "sIx":I
    .restart local v16    # "sepCnt":I
    :cond_7
    if-ge v6, v11, :cond_9

    .line 520
    const/4 v9, 0x0

    .line 521
    .restart local v9    # "i":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_8
    sub-int v17, v7, v12

    move/from16 v0, v17

    if-gt v15, v0, :cond_8

    .line 522
    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v18

    aget v17, v17, v18

    mul-int/lit8 v18, v10, 0x6

    rsub-int/lit8 v18, v18, 0x12

    shl-int v17, v17, v18

    or-int v9, v9, v17

    .line 521
    add-int/lit8 v10, v10, 0x1

    move v15, v14

    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    goto :goto_8

    .line 524
    :cond_8
    const/16 v13, 0x10

    .local v13, "r":I
    :goto_9
    if-ge v6, v11, :cond_9

    .line 525
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "d":I
    .restart local v5    # "d":I
    shr-int v17, v9, v13

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v2, v6

    .line 524
    add-int/lit8 v13, v13, -0x8

    move v6, v5

    .end local v5    # "d":I
    .restart local v6    # "d":I
    goto :goto_9

    .end local v9    # "i":I
    .end local v10    # "j":I
    .end local v13    # "r":I
    :cond_9
    move v5, v6

    .end local v6    # "d":I
    .restart local v5    # "d":I
    move v14, v15

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    goto/16 :goto_0

    .end local v14    # "sIx":I
    .restart local v9    # "i":I
    .restart local v15    # "sIx":I
    :cond_a
    move v14, v15

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    goto :goto_7
.end method

.method public static decodeBase64([CII)[B
    .locals 20
    .param p0, "chars"    # [C
    .param p1, "offset"    # I
    .param p2, "charsLen"    # I

    .prologue
    .line 423
    if-nez p2, :cond_0

    .line 424
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v2, v0, [B

    .line 473
    :goto_0
    return-object v2

    .line 427
    :cond_0
    move/from16 v14, p1

    .local v14, "sIx":I
    add-int v17, p1, p2

    add-int/lit8 v7, v17, -0x1

    .line 430
    .local v7, "eIx":I
    :goto_1
    if-ge v14, v7, :cond_1

    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    aget-char v18, p0, v14

    aget v17, v17, v18

    if-gez v17, :cond_1

    .line 431
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 434
    :cond_1
    :goto_2
    if-lez v7, :cond_2

    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    aget-char v18, p0, v7

    aget v17, v17, v18

    if-gez v17, :cond_2

    .line 435
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 438
    :cond_2
    aget-char v17, p0, v7

    const/16 v18, 0x3d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    add-int/lit8 v17, v7, -0x1

    aget-char v17, p0, v17

    const/16 v18, 0x3d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    const/4 v12, 0x2

    .line 439
    .local v12, "pad":I
    :goto_3
    sub-int v17, v7, v14

    add-int/lit8 v3, v17, 0x1

    .line 440
    .local v3, "cCnt":I
    const/16 v17, 0x4c

    move/from16 v0, p2

    move/from16 v1, v17

    if-le v0, v1, :cond_6

    const/16 v17, 0x4c

    aget-char v17, p0, v17

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    div-int/lit8 v17, v3, 0x4e

    :goto_4
    shl-int/lit8 v16, v17, 0x1

    .line 442
    .local v16, "sepCnt":I
    :goto_5
    sub-int v17, v3, v16

    mul-int/lit8 v17, v17, 0x6

    shr-int/lit8 v17, v17, 0x3

    sub-int v11, v17, v12

    .line 443
    .local v11, "len":I
    new-array v2, v11, [B

    .line 446
    .local v2, "bytes":[B
    const/4 v5, 0x0

    .line 447
    .local v5, "d":I
    const/4 v4, 0x0

    .local v4, "cc":I
    div-int/lit8 v17, v11, 0x3

    mul-int/lit8 v8, v17, 0x3

    .local v8, "eLen":I
    move v6, v5

    .end local v5    # "d":I
    .local v6, "d":I
    move v15, v14

    .end local v14    # "sIx":I
    .local v15, "sIx":I
    :goto_6
    if-ge v6, v8, :cond_7

    .line 449
    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    aget-char v18, p0, v15

    aget v17, v17, v18

    shl-int/lit8 v17, v17, 0x12

    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    aget-char v19, p0, v14

    aget v18, v18, v19

    shl-int/lit8 v18, v18, 0xc

    or-int v17, v17, v18

    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    aget-char v19, p0, v15

    aget v18, v18, v19

    shl-int/lit8 v18, v18, 0x6

    or-int v17, v17, v18

    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    aget-char v19, p0, v14

    aget v18, v18, v19

    or-int v9, v17, v18

    .line 452
    .local v9, "i":I
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "d":I
    .restart local v5    # "d":I
    shr-int/lit8 v17, v9, 0x10

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v2, v6

    .line 453
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "d":I
    .restart local v6    # "d":I
    shr-int/lit8 v17, v9, 0x8

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v2, v5

    .line 454
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "d":I
    .restart local v5    # "d":I
    int-to-byte v0, v9

    move/from16 v17, v0

    aput-byte v17, v2, v6

    .line 457
    if-lez v16, :cond_a

    add-int/lit8 v4, v4, 0x1

    const/16 v17, 0x13

    move/from16 v0, v17

    if-ne v4, v0, :cond_a

    .line 458
    add-int/lit8 v14, v15, 0x2

    .line 459
    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    const/4 v4, 0x0

    :goto_7
    move v6, v5

    .end local v5    # "d":I
    .restart local v6    # "d":I
    move v15, v14

    .line 461
    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    goto :goto_6

    .line 438
    .end local v2    # "bytes":[B
    .end local v3    # "cCnt":I
    .end local v4    # "cc":I
    .end local v6    # "d":I
    .end local v8    # "eLen":I
    .end local v9    # "i":I
    .end local v11    # "len":I
    .end local v12    # "pad":I
    .end local v15    # "sIx":I
    .end local v16    # "sepCnt":I
    .restart local v14    # "sIx":I
    :cond_3
    const/4 v12, 0x1

    goto/16 :goto_3

    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 440
    .restart local v3    # "cCnt":I
    .restart local v12    # "pad":I
    :cond_5
    const/16 v17, 0x0

    goto :goto_4

    :cond_6
    const/16 v16, 0x0

    goto :goto_5

    .line 463
    .end local v14    # "sIx":I
    .restart local v2    # "bytes":[B
    .restart local v4    # "cc":I
    .restart local v6    # "d":I
    .restart local v8    # "eLen":I
    .restart local v11    # "len":I
    .restart local v15    # "sIx":I
    .restart local v16    # "sepCnt":I
    :cond_7
    if-ge v6, v11, :cond_9

    .line 465
    const/4 v9, 0x0

    .line 466
    .restart local v9    # "i":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_8
    sub-int v17, v7, v12

    move/from16 v0, v17

    if-gt v15, v0, :cond_8

    .line 467
    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    aget-char v18, p0, v15

    aget v17, v17, v18

    mul-int/lit8 v18, v10, 0x6

    rsub-int/lit8 v18, v18, 0x12

    shl-int v17, v17, v18

    or-int v9, v9, v17

    .line 466
    add-int/lit8 v10, v10, 0x1

    move v15, v14

    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    goto :goto_8

    .line 469
    :cond_8
    const/16 v13, 0x10

    .local v13, "r":I
    :goto_9
    if-ge v6, v11, :cond_9

    .line 470
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "d":I
    .restart local v5    # "d":I
    shr-int v17, v9, v13

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v2, v6

    .line 469
    add-int/lit8 v13, v13, -0x8

    move v6, v5

    .end local v5    # "d":I
    .restart local v6    # "d":I
    goto :goto_9

    .end local v9    # "i":I
    .end local v10    # "j":I
    .end local v13    # "r":I
    :cond_9
    move v5, v6

    .end local v6    # "d":I
    .restart local v5    # "d":I
    move v14, v15

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    goto/16 :goto_0

    .end local v14    # "sIx":I
    .restart local v9    # "i":I
    .restart local v15    # "sIx":I
    :cond_a
    move v14, v15

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    goto :goto_7
.end method

.method public static decodeUTF8([BII[C)I
    .locals 14
    .param p0, "sa"    # [B
    .param p1, "sp"    # I
    .param p2, "len"    # I
    .param p3, "da"    # [C

    .prologue
    .line 660
    add-int v9, p1, p2

    .line 661
    .local v9, "sl":I
    const/4 v7, 0x0

    .line 662
    .local v7, "dp":I
    move-object/from16 v0, p3

    array-length v12, v0

    move/from16 v0, p2

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v6

    .local v6, "dlASCII":I
    move v8, v7

    .end local v7    # "dp":I
    .local v8, "dp":I
    move v10, p1

    .line 665
    .end local p1    # "sp":I
    .local v10, "sp":I
    :goto_0
    if-ge v8, v6, :cond_1

    aget-byte v12, p0, v10

    if-ltz v12, :cond_1

    .line 666
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "dp":I
    .restart local v7    # "dp":I
    add-int/lit8 p1, v10, 0x1

    .end local v10    # "sp":I
    .restart local p1    # "sp":I
    aget-byte v12, p0, v10

    int-to-char v12, v12

    aput-char v12, p3, v8

    move v8, v7

    .end local v7    # "dp":I
    .restart local v8    # "dp":I
    move v10, p1

    .end local p1    # "sp":I
    .restart local v10    # "sp":I
    goto :goto_0

    .line 680
    .local v1, "b1":I
    .local v2, "b2":I
    :cond_0
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "dp":I
    .restart local v7    # "dp":I
    shl-int/lit8 v12, v1, 0x6

    xor-int/2addr v12, v2

    xor-int/lit16 v12, v12, 0xf80

    int-to-char v12, v12

    aput-char v12, p3, v8

    move v8, v7

    .line 668
    .end local v1    # "b1":I
    .end local v2    # "b2":I
    .end local v7    # "dp":I
    .restart local v8    # "dp":I
    :cond_1
    :goto_1
    if-ge v10, v9, :cond_f

    .line 669
    add-int/lit8 p1, v10, 0x1

    .end local v10    # "sp":I
    .restart local p1    # "sp":I
    aget-byte v1, p0, v10

    .line 670
    .restart local v1    # "b1":I
    if-ltz v1, :cond_2

    .line 672
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "dp":I
    .restart local v7    # "dp":I
    int-to-char v12, v1

    aput-char v12, p3, v8

    move v8, v7

    .end local v7    # "dp":I
    .restart local v8    # "dp":I
    move v10, p1

    .line 741
    .end local p1    # "sp":I
    .restart local v10    # "sp":I
    goto :goto_1

    .line 673
    .end local v10    # "sp":I
    .restart local p1    # "sp":I
    :cond_2
    shr-int/lit8 v12, v1, 0x5

    const/4 v13, -0x2

    if-ne v12, v13, :cond_4

    and-int/lit8 v12, v1, 0x1e

    if-eqz v12, :cond_4

    .line 675
    if-ge p1, v9, :cond_3

    .line 676
    add-int/lit8 v10, p1, 0x1

    .end local p1    # "sp":I
    .restart local v10    # "sp":I
    aget-byte v2, p0, p1

    .line 677
    .restart local v2    # "b2":I
    and-int/lit16 v12, v2, 0xc0

    const/16 v13, 0x80

    if-eq v12, v13, :cond_0

    .line 678
    const/4 v8, -0x1

    move p1, v10

    .line 742
    .end local v1    # "b1":I
    .end local v2    # "b2":I
    .end local v8    # "dp":I
    .end local v10    # "sp":I
    .restart local p1    # "sp":I
    :goto_2
    return v8

    .line 686
    .restart local v1    # "b1":I
    .restart local v8    # "dp":I
    :cond_3
    const/4 v8, -0x1

    goto :goto_2

    .line 687
    :cond_4
    shr-int/lit8 v12, v1, 0x4

    const/4 v13, -0x2

    if-ne v12, v13, :cond_a

    .line 689
    add-int/lit8 v12, p1, 0x1

    if-ge v12, v9, :cond_9

    .line 690
    add-int/lit8 v10, p1, 0x1

    .end local p1    # "sp":I
    .restart local v10    # "sp":I
    aget-byte v2, p0, p1

    .line 691
    .restart local v2    # "b2":I
    add-int/lit8 p1, v10, 0x1

    .end local v10    # "sp":I
    .restart local p1    # "sp":I
    aget-byte v3, p0, v10

    .line 692
    .local v3, "b3":I
    const/16 v12, -0x20

    if-ne v1, v12, :cond_5

    and-int/lit16 v12, v2, 0xe0

    const/16 v13, 0x80

    if-eq v12, v13, :cond_6

    :cond_5
    and-int/lit16 v12, v2, 0xc0

    const/16 v13, 0x80

    if-ne v12, v13, :cond_6

    and-int/lit16 v12, v3, 0xc0

    const/16 v13, 0x80

    if-eq v12, v13, :cond_7

    .line 695
    :cond_6
    const/4 v8, -0x1

    goto :goto_2

    .line 697
    :cond_7
    shl-int/lit8 v12, v1, 0xc

    shl-int/lit8 v13, v2, 0x6

    xor-int/2addr v12, v13

    const v13, -0x1e080

    xor-int/2addr v13, v3

    xor-int/2addr v12, v13

    int-to-char v5, v12

    .line 703
    .local v5, "c":C
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 704
    const/4 v8, -0x1

    goto :goto_2

    .line 706
    :cond_8
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "dp":I
    .restart local v7    # "dp":I
    aput-char v5, p3, v8

    move v8, v7

    .end local v7    # "dp":I
    .restart local v8    # "dp":I
    move v10, p1

    .line 709
    .end local p1    # "sp":I
    .restart local v10    # "sp":I
    goto :goto_1

    .line 711
    .end local v2    # "b2":I
    .end local v3    # "b3":I
    .end local v5    # "c":C
    .end local v10    # "sp":I
    .restart local p1    # "sp":I
    :cond_9
    const/4 v8, -0x1

    goto :goto_2

    .line 712
    :cond_a
    shr-int/lit8 v12, v1, 0x3

    const/4 v13, -0x2

    if-ne v12, v13, :cond_e

    .line 714
    add-int/lit8 v12, p1, 0x2

    if-ge v12, v9, :cond_d

    .line 715
    add-int/lit8 v10, p1, 0x1

    .end local p1    # "sp":I
    .restart local v10    # "sp":I
    aget-byte v2, p0, p1

    .line 716
    .restart local v2    # "b2":I
    add-int/lit8 p1, v10, 0x1

    .end local v10    # "sp":I
    .restart local p1    # "sp":I
    aget-byte v3, p0, v10

    .line 717
    .restart local v3    # "b3":I
    add-int/lit8 v10, p1, 0x1

    .end local p1    # "sp":I
    .restart local v10    # "sp":I
    aget-byte v4, p0, p1

    .line 718
    .local v4, "b4":I
    shl-int/lit8 v12, v1, 0x12

    shl-int/lit8 v13, v2, 0xc

    xor-int/2addr v12, v13

    shl-int/lit8 v13, v3, 0x6

    xor-int/2addr v12, v13

    const v13, 0x381f80

    xor-int/2addr v13, v4

    xor-int v11, v12, v13

    .line 726
    .local v11, "uc":I
    and-int/lit16 v12, v2, 0xc0

    const/16 v13, 0x80

    if-ne v12, v13, :cond_b

    and-int/lit16 v12, v3, 0xc0

    const/16 v13, 0x80

    if-ne v12, v13, :cond_b

    and-int/lit16 v12, v4, 0xc0

    const/16 v13, 0x80

    if-ne v12, v13, :cond_b

    .line 729
    invoke-static {v11}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v12

    if-nez v12, :cond_c

    .line 730
    :cond_b
    const/4 v8, -0x1

    move p1, v10

    .end local v10    # "sp":I
    .restart local p1    # "sp":I
    goto/16 :goto_2

    .line 732
    .end local p1    # "sp":I
    .restart local v10    # "sp":I
    :cond_c
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "dp":I
    .restart local v7    # "dp":I
    invoke-static {v11}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v12

    aput-char v12, p3, v8

    .line 733
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "dp":I
    .restart local v8    # "dp":I
    invoke-static {v11}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v12

    aput-char v12, p3, v7

    goto/16 :goto_1

    .line 737
    .end local v2    # "b2":I
    .end local v3    # "b3":I
    .end local v4    # "b4":I
    .end local v10    # "sp":I
    .end local v11    # "uc":I
    .restart local p1    # "sp":I
    :cond_d
    const/4 v8, -0x1

    goto/16 :goto_2

    .line 739
    :cond_e
    const/4 v8, -0x1

    goto/16 :goto_2

    .end local v1    # "b1":I
    .end local p1    # "sp":I
    .restart local v10    # "sp":I
    :cond_f
    move p1, v10

    .line 742
    .end local v10    # "sp":I
    .restart local p1    # "sp":I
    goto/16 :goto_2
.end method

.method public static encodeUTF8([CII[B)I
    .locals 14
    .param p0, "sa"    # [C
    .param p1, "sp"    # I
    .param p2, "len"    # I
    .param p3, "da"    # [B

    .prologue
    .line 600
    add-int v7, p1, p2

    .line 601
    .local v7, "sl":I
    const/4 v4, 0x0

    .line 602
    .local v4, "dp":I
    move-object/from16 v0, p3

    array-length v10, v0

    move/from16 v0, p2

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int v3, v4, v10

    .local v3, "dlASCII":I
    move v5, v4

    .end local v4    # "dp":I
    .local v5, "dp":I
    move v8, p1

    .line 605
    .end local p1    # "sp":I
    .local v8, "sp":I
    :goto_0
    if-ge v5, v3, :cond_0

    aget-char v10, p0, v8

    const/16 v11, 0x80

    if-ge v10, v11, :cond_0

    .line 606
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "dp":I
    .restart local v4    # "dp":I
    add-int/lit8 p1, v8, 0x1

    .end local v8    # "sp":I
    .restart local p1    # "sp":I
    aget-char v10, p0, v8

    int-to-byte v10, v10

    aput-byte v10, p3, v5

    move v5, v4

    .end local v4    # "dp":I
    .restart local v5    # "dp":I
    move v8, p1

    .end local p1    # "sp":I
    .restart local v8    # "sp":I
    goto :goto_0

    .line 609
    :cond_0
    :goto_1
    if-ge v8, v7, :cond_9

    .line 610
    add-int/lit8 p1, v8, 0x1

    .end local v8    # "sp":I
    .restart local p1    # "sp":I
    aget-char v1, p0, v8

    .line 611
    .local v1, "c":C
    const/16 v10, 0x80

    if-ge v1, v10, :cond_1

    .line 613
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "dp":I
    .restart local v4    # "dp":I
    int-to-byte v10, v1

    aput-byte v10, p3, v5

    :goto_2
    move v5, v4

    .end local v4    # "dp":I
    .restart local v5    # "dp":I
    move v8, p1

    .line 655
    .end local p1    # "sp":I
    .restart local v8    # "sp":I
    goto :goto_1

    .line 614
    .end local v8    # "sp":I
    .restart local p1    # "sp":I
    :cond_1
    const/16 v10, 0x800

    if-ge v1, v10, :cond_2

    .line 616
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "dp":I
    .restart local v4    # "dp":I
    shr-int/lit8 v10, v1, 0x6

    or-int/lit16 v10, v10, 0xc0

    int-to-byte v10, v10

    aput-byte v10, p3, v5

    .line 617
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "dp":I
    .restart local v5    # "dp":I
    and-int/lit8 v10, v1, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, p3, v4

    move v4, v5

    .end local v5    # "dp":I
    .restart local v4    # "dp":I
    goto :goto_2

    .line 618
    .end local v4    # "dp":I
    .restart local v5    # "dp":I
    :cond_2
    const v10, 0xd800

    if-lt v1, v10, :cond_8

    const v10, 0xe000

    if-ge v1, v10, :cond_8

    .line 620
    add-int/lit8 v6, p1, -0x1

    .line 621
    .local v6, "ip":I
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 622
    sub-int v10, v7, v6

    const/4 v11, 0x2

    if-ge v10, v11, :cond_3

    .line 623
    const/4 v9, -0x1

    .line 640
    .local v9, "uc":I
    :goto_3
    if-gez v9, :cond_7

    .line 641
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "dp":I
    .restart local v4    # "dp":I
    const/16 v10, 0x3f

    aput-byte v10, p3, v5

    goto :goto_2

    .line 625
    .end local v4    # "dp":I
    .end local v9    # "uc":I
    .restart local v5    # "dp":I
    :cond_3
    add-int/lit8 v10, v6, 0x1

    aget-char v2, p0, v10

    .line 626
    .local v2, "d":C
    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 627
    invoke-static {v1, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v9

    .restart local v9    # "uc":I
    goto :goto_3

    .line 629
    .end local v9    # "uc":I
    :cond_4
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    const-string v11, "encodeUTF8 error"

    new-instance v12, Ljava/nio/charset/MalformedInputException;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    invoke-direct {v10, v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 633
    .end local v2    # "d":C
    :cond_5
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 634
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    const-string v11, "encodeUTF8 error"

    new-instance v12, Ljava/nio/charset/MalformedInputException;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    invoke-direct {v10, v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 636
    :cond_6
    move v9, v1

    .restart local v9    # "uc":I
    goto :goto_3

    .line 643
    :cond_7
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "dp":I
    .restart local v4    # "dp":I
    shr-int/lit8 v10, v9, 0x12

    or-int/lit16 v10, v10, 0xf0

    int-to-byte v10, v10

    aput-byte v10, p3, v5

    .line 644
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "dp":I
    .restart local v5    # "dp":I
    shr-int/lit8 v10, v9, 0xc

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, p3, v4

    .line 645
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "dp":I
    .restart local v4    # "dp":I
    shr-int/lit8 v10, v9, 0x6

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, p3, v5

    .line 646
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "dp":I
    .restart local v5    # "dp":I
    and-int/lit8 v10, v9, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, p3, v4

    .line 647
    add-int/lit8 p1, p1, 0x1

    move v4, v5

    .end local v5    # "dp":I
    .restart local v4    # "dp":I
    goto/16 :goto_2

    .line 651
    .end local v4    # "dp":I
    .end local v6    # "ip":I
    .end local v9    # "uc":I
    .restart local v5    # "dp":I
    :cond_8
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "dp":I
    .restart local v4    # "dp":I
    shr-int/lit8 v10, v1, 0xc

    or-int/lit16 v10, v10, 0xe0

    int-to-byte v10, v10

    aput-byte v10, p3, v5

    .line 652
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "dp":I
    .restart local v5    # "dp":I
    shr-int/lit8 v10, v1, 0x6

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, p3, v4

    .line 653
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "dp":I
    .restart local v4    # "dp":I
    and-int/lit8 v10, v1, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, p3, v5

    goto/16 :goto_2

    .line 656
    .end local v1    # "c":C
    .end local v4    # "dp":I
    .end local p1    # "sp":I
    .restart local v5    # "dp":I
    .restart local v8    # "sp":I
    :cond_9
    return v5
.end method

.method public static firstIdentifier(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 394
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getChars(BI[C)V
    .locals 7
    .param p0, "b"    # B
    .param p1, "index"    # I
    .param p2, "buf"    # [C

    .prologue
    .line 320
    move v1, p0

    .line 322
    .local v1, "i":I
    move v0, p1

    .line 323
    .local v0, "charPos":I
    const/4 v4, 0x0

    .line 325
    .local v4, "sign":C
    if-gez v1, :cond_0

    .line 326
    const/16 v4, 0x2d

    .line 327
    neg-int v1, v1

    .line 333
    :cond_0
    const v5, 0xcccd

    mul-int/2addr v5, v1

    ushr-int/lit8 v2, v5, 0x13

    .line 334
    .local v2, "q":I
    shl-int/lit8 v5, v2, 0x3

    shl-int/lit8 v6, v2, 0x1

    add-int/2addr v5, v6

    sub-int v3, v1, v5

    .line 335
    .local v3, "r":I
    add-int/lit8 v0, v0, -0x1

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    aget-char v5, v5, v3

    aput-char v5, p2, v0

    .line 336
    move v1, v2

    .line 337
    if-nez v1, :cond_0

    .line 339
    if-eqz v4, :cond_1

    .line 340
    add-int/lit8 v0, v0, -0x1

    aput-char v4, p2, v0

    .line 342
    :cond_1
    return-void
.end method

.method public static getChars(II[C)V
    .locals 6
    .param p0, "i"    # I
    .param p1, "index"    # I
    .param p2, "buf"    # [C

    .prologue
    .line 287
    move v0, p1

    .line 288
    .local v0, "charPos":I
    const/4 v3, 0x0

    .line 290
    .local v3, "sign":C
    if-gez p0, :cond_0

    .line 291
    const/16 v3, 0x2d

    .line 292
    neg-int p0, p0

    .line 296
    :cond_0
    :goto_0
    const/high16 v4, 0x10000

    if-lt p0, v4, :cond_1

    .line 297
    div-int/lit8 v1, p0, 0x64

    .line 299
    .local v1, "q":I
    shl-int/lit8 v4, v1, 0x6

    shl-int/lit8 v5, v1, 0x5

    add-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    sub-int v2, p0, v4

    .line 300
    .local v2, "r":I
    move p0, v1

    .line 301
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    aget-char v4, v4, v2

    aput-char v4, p2, v0

    .line 302
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    aget-char v4, v4, v2

    aput-char v4, p2, v0

    goto :goto_0

    .line 308
    .end local v1    # "q":I
    .end local v2    # "r":I
    :cond_1
    const v4, 0xcccd

    mul-int/2addr v4, p0

    ushr-int/lit8 v1, v4, 0x13

    .line 309
    .restart local v1    # "q":I
    shl-int/lit8 v4, v1, 0x3

    shl-int/lit8 v5, v1, 0x1

    add-int/2addr v4, v5

    sub-int v2, p0, v4

    .line 310
    .restart local v2    # "r":I
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    aget-char v4, v4, v2

    aput-char v4, p2, v0

    .line 311
    move p0, v1

    .line 312
    if-nez p0, :cond_1

    .line 314
    if-eqz v3, :cond_2

    .line 315
    add-int/lit8 v0, v0, -0x1

    aput-char v3, p2, v0

    .line 317
    :cond_2
    return-void
.end method

.method public static getChars(JI[C)V
    .locals 12
    .param p0, "i"    # J
    .param p2, "index"    # I
    .param p3, "buf"    # [C

    .prologue
    .line 236
    move v0, p2

    .line 237
    .local v0, "charPos":I
    const/4 v6, 0x0

    .line 239
    .local v6, "sign":C
    const-wide/16 v8, 0x0

    cmp-long v7, p0, v8

    if-gez v7, :cond_0

    .line 240
    const/16 v6, 0x2d

    .line 241
    neg-long p0, p0

    .line 245
    :cond_0
    :goto_0
    const-wide/32 v8, 0x7fffffff

    cmp-long v7, p0, v8

    if-lez v7, :cond_1

    .line 246
    const-wide/16 v8, 0x64

    div-long v2, p0, v8

    .line 248
    .local v2, "q":J
    const/4 v7, 0x6

    shl-long v8, v2, v7

    const/4 v7, 0x5

    shl-long v10, v2, v7

    add-long/2addr v8, v10

    const/4 v7, 0x2

    shl-long v10, v2, v7

    add-long/2addr v8, v10

    sub-long v8, p0, v8

    long-to-int v5, v8

    .line 249
    .local v5, "r":I
    move-wide p0, v2

    .line 250
    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    .line 251
    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    goto :goto_0

    .line 256
    .end local v2    # "q":J
    .end local v5    # "r":I
    :cond_1
    long-to-int v1, p0

    .line 257
    .local v1, "i2":I
    :goto_1
    const/high16 v7, 0x10000

    if-lt v1, v7, :cond_2

    .line 258
    div-int/lit8 v4, v1, 0x64

    .line 260
    .local v4, "q2":I
    shl-int/lit8 v7, v4, 0x6

    shl-int/lit8 v8, v4, 0x5

    add-int/2addr v7, v8

    shl-int/lit8 v8, v4, 0x2

    add-int/2addr v7, v8

    sub-int v5, v1, v7

    .line 261
    .restart local v5    # "r":I
    move v1, v4

    .line 262
    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    .line 263
    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    goto :goto_1

    .line 269
    .end local v4    # "q2":I
    .end local v5    # "r":I
    :cond_2
    const v7, 0xcccd

    mul-int/2addr v7, v1

    ushr-int/lit8 v4, v7, 0x13

    .line 270
    .restart local v4    # "q2":I
    shl-int/lit8 v7, v4, 0x3

    shl-int/lit8 v8, v4, 0x1

    add-int/2addr v7, v8

    sub-int v5, v1, v7

    .line 271
    .restart local v5    # "r":I
    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    .line 272
    move v1, v4

    .line 273
    if-nez v1, :cond_2

    .line 275
    if-eqz v6, :cond_3

    .line 276
    add-int/lit8 v0, v0, -0x1

    aput-char v6, p3, v0

    .line 278
    :cond_3
    return-void
.end method

.method public static getStringProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 101
    .local v0, "prop":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 105
    :goto_0
    if-nez v0, :cond_0

    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->DEFAULT_PROPERTIES:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "prop":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 102
    .restart local v0    # "prop":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isIdent(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 398
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadPropertiesFromFile()V
    .locals 2

    .prologue
    .line 109
    new-instance v1, Lcom/alibaba/fastjson/util/IOUtils$1;

    invoke-direct {v1}, Lcom/alibaba/fastjson/util/IOUtils$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 120
    .local v0, "imputStream":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 122
    :try_start_0
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->DEFAULT_PROPERTIES:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 123
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static stringSize(I)I
    .locals 2
    .param p0, "x"    # I

    .prologue
    .line 366
    const/4 v0, 0x0

    .line 367
    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->sizeTable:[I

    aget v1, v1, v0

    if-gt p0, v1, :cond_0

    .line 368
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 366
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static stringSize(J)I
    .locals 6
    .param p0, "x"    # J

    .prologue
    const/16 v1, 0x13

    .line 225
    const-wide/16 v2, 0xa

    .line 226
    .local v2, "p":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 227
    cmp-long v4, p0, v2

    if-gez v4, :cond_0

    .line 230
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 228
    .restart local v0    # "i":I
    :cond_0
    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 230
    goto :goto_1
.end method
