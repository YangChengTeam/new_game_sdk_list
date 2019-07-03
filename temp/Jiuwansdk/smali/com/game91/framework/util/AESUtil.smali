.class public Lcom/game91/framework/util/AESUtil;
.super Ljava/lang/Object;
.source "AESUtil.java"


# static fields
.field private static final CipherMode:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static sIv:Ljava/lang/String;

.field private static sPawd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, ""

    sput-object v0, Lcom/game91/framework/util/AESUtil;->sIv:Ljava/lang/String;

    .line 18
    const-string v0, ""

    sput-object v0, Lcom/game91/framework/util/AESUtil;->sPawd:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byte2hex([B)Ljava/lang/String;
    .locals 5
    .param p0, "var0"    # [B

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 28
    .local v0, "var1":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "var2":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 29
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, "var3":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 31
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    .end local v2    # "var3":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static createIV(Ljava/lang/String;)Ljavax/crypto/spec/IvParameterSpec;
    .locals 7
    .param p0, "var0"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "var1":Ljava/lang/Object;
    move-object v1, p0

    .line 49
    .local v1, "var2":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 50
    const-string v1, ""

    .line 53
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 54
    .local v3, "var4":Ljava/lang/StringBuffer;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-ge v5, v6, :cond_1

    .line 57
    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-le v5, v6, :cond_2

    .line 61
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 66
    :cond_2
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 72
    .end local v0    # "var1":Ljava/lang/Object;
    .local v4, "var5":[B
    :goto_1
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object v5

    .line 67
    .end local v4    # "var5":[B
    .restart local v0    # "var1":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 68
    .local v2, "var3":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 69
    check-cast v0, [B

    .end local v0    # "var1":Ljava/lang/Object;
    move-object v4, v0

    check-cast v4, [B

    .restart local v4    # "var5":[B
    goto :goto_1
.end method

.method private static createIV1(Ljava/lang/String;)Ljavax/crypto/spec/IvParameterSpec;
    .locals 7
    .param p0, "var0"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "var1":Ljava/lang/Object;
    move-object v1, p0

    .line 151
    .local v1, "var2":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 152
    const-string v1, ""

    .line 155
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 156
    .local v3, "var4":Ljava/lang/StringBuffer;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-ge v5, v6, :cond_1

    .line 159
    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-le v5, v6, :cond_2

    .line 163
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 168
    :cond_2
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 174
    .end local v0    # "var1":Ljava/lang/Object;
    .local v4, "var5":[B
    :goto_1
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object v5

    .line 169
    .end local v4    # "var5":[B
    .restart local v0    # "var1":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 170
    .local v2, "var3":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 171
    check-cast v0, [B

    .end local v0    # "var1":Ljava/lang/Object;
    move-object v4, v0

    check-cast v4, [B

    .restart local v4    # "var5":[B
    goto :goto_1
.end method

.method private static createKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 7
    .param p0, "var0"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "var1":Ljava/lang/Object;
    move-object v1, p0

    .line 78
    .local v1, "var2":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 79
    const-string v1, ""

    .line 82
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 83
    .local v3, "var4":Ljava/lang/StringBuffer;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-ge v5, v6, :cond_1

    .line 86
    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-le v5, v6, :cond_2

    .line 90
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 95
    :cond_2
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 101
    .end local v0    # "var1":Ljava/lang/Object;
    .local v4, "var5":[B
    :goto_1
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "AES"

    invoke-direct {v5, v4, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v5

    .line 96
    .end local v4    # "var5":[B
    .restart local v0    # "var1":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 97
    .local v2, "var3":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 98
    check-cast v0, [B

    .end local v0    # "var1":Ljava/lang/Object;
    move-object v4, v0

    check-cast v4, [B

    .restart local v4    # "var5":[B
    goto :goto_1
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "var0"    # Ljava/lang/String;

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 109
    .local v0, "var1":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/game91/framework/util/AESUtil;->hex2byte(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 115
    .local v5, "var5":[B
    :goto_0
    sget-object v6, Lcom/game91/framework/util/AESUtil;->sPawd:Ljava/lang/String;

    sget-object v7, Lcom/game91/framework/util/AESUtil;->sIv:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/game91/framework/util/AESUtil;->decrypt([BLjava/lang/String;[B)[B

    move-result-object v2

    .line 116
    .local v2, "var2":[B
    if-nez v2, :cond_0

    .line 117
    const/4 p0, 0x0

    .line 131
    :goto_1
    return-object p0

    .line 110
    .end local v2    # "var2":[B
    .end local v5    # "var5":[B
    :catch_0
    move-exception v3

    .line 111
    .local v3, "var3":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .restart local v5    # "var5":[B
    goto :goto_0

    .line 119
    .end local v3    # "var3":Ljava/lang/Exception;
    .restart local v2    # "var2":[B
    :cond_0
    const/4 p0, 0x0

    .line 122
    :try_start_1
    new-instance v1, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v1, v2, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    .end local v0    # "var1":Ljava/lang/String;
    .local v1, "var1":Ljava/lang/String;
    move-object p0, v1

    move-object v0, v1

    .end local v1    # "var1":Ljava/lang/String;
    .restart local v0    # "var1":Ljava/lang/String;
    goto :goto_1

    .line 123
    :catch_1
    move-exception v4

    .line 124
    .local v4, "var4":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public static decrypt([BLjava/lang/String;[B)[B
    .locals 5
    .param p0, "var0"    # [B
    .param p1, "var1"    # Ljava/lang/String;
    .param p2, "var2"    # [B

    .prologue
    .line 136
    :try_start_0
    invoke-static {p1}, Lcom/game91/framework/util/AESUtil;->createKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v0

    .line 137
    .local v0, "var3":Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 138
    .local v2, "var5":Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v2, v3, v0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 139
    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 145
    .end local v0    # "var3":Ljavax/crypto/spec/SecretKeySpec;
    .end local v2    # "var5":Ljavax/crypto/Cipher;
    :goto_0
    return-object p0

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "var4":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static encrypt(Ljava/lang/String;)[B
    .locals 5
    .param p0, "var0"    # Ljava/lang/String;

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 196
    .local v0, "var1":Ljava/lang/Object;
    :try_start_0
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 201
    .end local v0    # "var1":Ljava/lang/Object;
    .local v2, "var3":[B
    :goto_0
    sget-object v3, Lcom/game91/framework/util/AESUtil;->sPawd:Ljava/lang/String;

    sget-object v4, Lcom/game91/framework/util/AESUtil;->sIv:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/game91/framework/util/AESUtil;->encrypt([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    return-object v3

    .line 197
    .end local v2    # "var3":[B
    .restart local v0    # "var1":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 198
    .local v1, "var2":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 199
    check-cast v0, [B

    .end local v0    # "var1":Ljava/lang/Object;
    move-object v2, v0

    check-cast v2, [B

    .restart local v2    # "var3":[B
    goto :goto_0
.end method

.method public static encrypt([BLjava/lang/String;Ljava/lang/String;)[B
    .locals 5
    .param p0, "data"    # [B
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "iv"    # Ljava/lang/String;

    .prologue
    .line 206
    :try_start_0
    invoke-static {p1}, Lcom/game91/framework/util/AESUtil;->createKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v0

    .line 207
    .local v0, "var3":Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 208
    .local v2, "var5":Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    invoke-static {p2}, Lcom/game91/framework/util/AESUtil;->createIV(Ljava/lang/String;)Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 209
    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 215
    .end local v0    # "var3":Ljavax/crypto/spec/SecretKeySpec;
    .end local v2    # "var5":Ljavax/crypto/Cipher;
    :goto_0
    return-object p0

    .line 210
    :catch_0
    move-exception v1

    .line 211
    .local v1, "var4":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 212
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static encryptToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "var0"    # Ljava/lang/String;

    .prologue
    .line 178
    const/4 v0, 0x0

    .line 182
    .local v0, "var1":Ljava/lang/Object;
    :try_start_0
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 188
    .end local v0    # "var1":Ljava/lang/Object;
    .local v2, "var3":[B
    :goto_0
    sget-object v3, Lcom/game91/framework/util/AESUtil;->sPawd:Ljava/lang/String;

    sget-object v4, Lcom/game91/framework/util/AESUtil;->sIv:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/game91/framework/util/AESUtil;->encrypt([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/game91/framework/util/AESUtil;->byte2hex([B)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 183
    .end local v2    # "var3":[B
    .restart local v0    # "var1":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 184
    .local v1, "var2":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 185
    check-cast v0, [B

    .end local v0    # "var1":Ljava/lang/Object;
    move-object v2, v0

    check-cast v2, [B

    .restart local v2    # "var3":[B
    goto :goto_0
.end method

.method public static hex2base64(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {p0}, Lcom/game91/framework/util/AESUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v0

    .line 43
    .local v0, "buffer":[B
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static hex2byte(Ljava/lang/String;)[B
    .locals 7
    .param p0, "var0"    # Ljava/lang/String;

    .prologue
    .line 220
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_1

    .line 221
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "var1":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v1, v5, 0x2

    .line 223
    .local v1, "var2":I
    new-array v2, v1, [B

    .line 224
    .local v2, "var3":[B
    const/4 v3, 0x0

    .line 227
    .local v3, "var4":I
    :goto_0
    move-object v4, v2

    .line 228
    .local v4, "var5":[B
    if-lt v3, v1, :cond_0

    .line 239
    .end local v0    # "var1":Ljava/lang/String;
    .end local v1    # "var2":I
    .end local v2    # "var3":[B
    .end local v3    # "var4":I
    :goto_1
    return-object v4

    .line 232
    .restart local v0    # "var1":Ljava/lang/String;
    .restart local v1    # "var2":I
    .restart local v2    # "var3":[B
    .restart local v3    # "var4":I
    :cond_0
    mul-int/lit8 v5, v3, 0x2

    mul-int/lit8 v6, v3, 0x2

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    .line 233
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 236
    .end local v0    # "var1":Ljava/lang/String;
    .end local v1    # "var2":I
    .end local v2    # "var3":[B
    .end local v3    # "var4":I
    .end local v4    # "var5":[B
    :cond_1
    const/4 v5, 0x0

    new-array v4, v5, [B

    .restart local v4    # "var5":[B
    goto :goto_1
.end method

.method public static init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "iv"    # Ljava/lang/String;

    .prologue
    .line 21
    sput-object p1, Lcom/game91/framework/util/AESUtil;->sIv:Ljava/lang/String;

    .line 22
    sput-object p0, Lcom/game91/framework/util/AESUtil;->sPawd:Ljava/lang/String;

    .line 23
    return-void
.end method
