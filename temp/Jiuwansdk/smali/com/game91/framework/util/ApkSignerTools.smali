.class public Lcom/game91/framework/util/ApkSignerTools;
.super Ljava/lang/Object;
.source "ApkSignerTools.java"


# static fields
.field private static final GAME91_V1_SIGN:Ljava/lang/String; = "CA:81:3A:72:F3:FD:C6:6B:DE:3E:75:77:E7:7D:F7:31:73:3C:4F:85"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkApkGame91Sign(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 34
    const/4 v0, 0x1

    .line 35
    .local v0, "v1Sign":Z
    invoke-static {p0}, Lcom/game91/framework/util/ApkSignerTools;->getV2Sign(Landroid/app/Activity;)Z

    move-result v1

    .line 36
    .local v1, "v2Sign":Z
    const-string v2, "CA:81:3A:72:F3:FD:C6:6B:DE:3E:75:77:E7:7D:F7:31:73:3C:4F:85"

    invoke-static {p0}, Lcom/game91/framework/util/ApkSignerTools;->getSign(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 39
    :cond_0
    invoke-static {p0, v0, v1}, Lcom/game91/framework/util/ApkSignerTools;->showAlertToast(Landroid/app/Activity;ZZ)V

    .line 40
    return-void
.end method

.method private static checkApkUseV2Sign(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 86
    return-void
.end method

.method static getSign(Landroid/app/Activity;)Ljava/lang/String;
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 90
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x40

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 92
    .local v5, "info":Landroid/content/pm/PackageInfo;
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    .line 94
    .local v1, "cert":[B
    const-string v8, "SHA1"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 95
    .local v6, "md":Ljava/security/MessageDigest;
    invoke-virtual {v6, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    .line 96
    .local v7, "publicKey":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v3, "hexString":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, v7

    if-ge v4, v8, :cond_2

    .line 98
    aget-byte v8, v7, v4

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 99
    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "appendString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 101
    const-string v8, "0"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    if-eq v4, v8, :cond_1

    .line 104
    const-string v8, ":"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "appendString":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 110
    .end local v1    # "cert":[B
    .end local v3    # "hexString":Ljava/lang/StringBuilder;
    .end local v4    # "i":I
    .end local v5    # "info":Landroid/content/pm/PackageInfo;
    .end local v6    # "md":Ljava/security/MessageDigest;
    .end local v7    # "publicKey":[B
    :goto_1
    return-object v8

    .line 107
    :catch_0
    move-exception v2

    .line 108
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    const-string v8, "0"

    goto :goto_1
.end method

.method static getV2Sign(Landroid/app/Activity;)Z
    .locals 24
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 115
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 116
    .local v12, "packageInfo":Landroid/content/pm/PackageInfo;
    new-instance v9, Ljava/io/File;

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v9, "f":Ljava/io/File;
    new-instance v13, Ljava/io/RandomAccessFile;

    const-string v19, "r"

    move-object/from16 v0, v19

    invoke-direct {v13, v9, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 118
    .local v13, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v10

    .line 119
    .local v10, "fileChannel":Ljava/nio/channels/FileChannel;
    const v18, 0x10015

    .line 120
    .local v18, "zipEndLength":I
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v20

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v14, v20, v22

    .line 121
    .local v14, "pos":J
    const-wide/16 v20, 0x0

    cmp-long v19, v14, v20

    if-gtz v19, :cond_0

    .line 122
    const-wide/16 v14, 0x0

    .line 123
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v18, v0

    .line 125
    :cond_0
    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 126
    .local v7, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v10, v14, v15}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 127
    invoke-virtual {v10, v7}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 128
    sget-object v19, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 129
    const v6, 0x6054b50

    .line 131
    .local v6, "ZIP_COMMENT_HEADER":I
    const/16 v16, 0x16

    .line 133
    .local v16, "start":I
    const-wide v2, 0x3234206b636f6c42L    # 7.465385175170059E-67

    .line 134
    .local v2, "APK_SIG_BLOCK_MAGIC_HI":J
    const-wide v4, 0x20676953204b5041L

    .line 136
    .local v4, "APK_SIG_BLOCK_MAGIC_LO":J
    :cond_1
    sub-int v19, v18, v16

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v17

    .line 137
    .local v17, "value":I
    move/from16 v0, v17

    if-ne v0, v6, :cond_4

    .line 138
    sub-int v19, v18, v16

    add-int/lit8 v19, v19, 0x10

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    .line 139
    .local v8, "centralDirOffset":I
    add-int/lit8 v19, v8, -0x18

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v10, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 140
    const/16 v19, 0x18

    invoke-static/range {v19 .. v19}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 141
    .local v11, "footer":Ljava/nio/ByteBuffer;
    invoke-virtual {v10, v11}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 142
    sget-object v19, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 143
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v20

    const-wide v22, 0x20676953204b5041L

    cmp-long v19, v20, v22

    if-nez v19, :cond_2

    const/16 v19, 0x10

    .line 144
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v20

    const-wide v22, 0x3234206b636f6c42L    # 7.465385175170059E-67

    cmp-long v19, v20, v22

    if-eqz v19, :cond_3

    .line 145
    :cond_2
    const/16 v19, 0x0

    .line 158
    .end local v2    # "APK_SIG_BLOCK_MAGIC_HI":J
    .end local v4    # "APK_SIG_BLOCK_MAGIC_LO":J
    .end local v6    # "ZIP_COMMENT_HEADER":I
    .end local v7    # "buffer":Ljava/nio/ByteBuffer;
    .end local v8    # "centralDirOffset":I
    .end local v9    # "f":Ljava/io/File;
    .end local v10    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v11    # "footer":Ljava/nio/ByteBuffer;
    .end local v12    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .end local v14    # "pos":J
    .end local v16    # "start":I
    .end local v17    # "value":I
    .end local v18    # "zipEndLength":I
    :goto_0
    return v19

    .line 147
    .restart local v2    # "APK_SIG_BLOCK_MAGIC_HI":J
    .restart local v4    # "APK_SIG_BLOCK_MAGIC_LO":J
    .restart local v6    # "ZIP_COMMENT_HEADER":I
    .restart local v7    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v8    # "centralDirOffset":I
    .restart local v9    # "f":Ljava/io/File;
    .restart local v10    # "fileChannel":Ljava/nio/channels/FileChannel;
    .restart local v11    # "footer":Ljava/nio/ByteBuffer;
    .restart local v12    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local v14    # "pos":J
    .restart local v16    # "start":I
    .restart local v17    # "value":I
    .restart local v18    # "zipEndLength":I
    :cond_3
    const/16 v19, 0x1

    goto :goto_0

    .line 149
    .end local v8    # "centralDirOffset":I
    .end local v11    # "footer":Ljava/nio/ByteBuffer;
    :cond_4
    add-int/lit8 v16, v16, 0x1

    .line 150
    add-int/lit8 v19, v18, -0x16

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 151
    const/16 v19, 0x0

    goto :goto_0

    .line 155
    .end local v2    # "APK_SIG_BLOCK_MAGIC_HI":J
    .end local v4    # "APK_SIG_BLOCK_MAGIC_LO":J
    .end local v6    # "ZIP_COMMENT_HEADER":I
    .end local v7    # "buffer":Ljava/nio/ByteBuffer;
    .end local v9    # "f":Ljava/io/File;
    .end local v10    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v12    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .end local v14    # "pos":J
    .end local v16    # "start":I
    .end local v17    # "value":I
    .end local v18    # "zipEndLength":I
    :catch_0
    move-exception v19

    .line 158
    const/16 v19, 0x0

    goto :goto_0
.end method

.method private static showAlertToast(Landroid/app/Activity;ZZ)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "v1Sign"    # Z
    .param p2, "v2Sign"    # Z

    .prologue
    .line 43
    if-nez p1, :cond_1

    const-string v0, "<font color=\'#FF4081\'>\u8bf7\u4f7f\u7528\u6211\u65b9\u63d0\u4f9b\u7684\u7b7e\u540d\u6587\u4ef6\u7b7e\u540dapk</font>"

    .line 44
    .local v0, "v1":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_2

    const-string v1, "<font color=\'#FF4081\'>\u8bf7\u5173\u95edv2\u7b7e\u540d\u6253\u5305\u65b9\u5f0f</font>"

    .line 46
    .local v1, "v2":Ljava/lang/String;
    :goto_1
    invoke-static {p0}, Lcom/game91/framework/util/DeviceUtils;->isDebug(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 47
    invoke-static {p0, v0, v1}, Lcom/game91/framework/util/ApkSignerTools;->showToast(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    :goto_2
    return-void

    .line 43
    .end local v0    # "v1":Ljava/lang/String;
    .end local v1    # "v2":Ljava/lang/String;
    :cond_1
    const-string v0, "<font color=\'#3F51B5\'>V1\u7b7e\u540d\u9a8c\u8bc1\u901a\u8fc7</font>"

    goto :goto_0

    .line 44
    .restart local v0    # "v1":Ljava/lang/String;
    :cond_2
    const-string v1, "<font color=\'#3F51B5\'>V2\u7b7e\u540d\u9a8c\u8bc1\u901a\u8fc7</font>"

    goto :goto_1

    .line 49
    .restart local v1    # "v2":Ljava/lang/String;
    :cond_3
    if-eqz p1, :cond_4

    if-eqz p2, :cond_0

    .line 50
    :cond_4
    invoke-static {p0, v0, v1}, Lcom/game91/framework/util/ApkSignerTools;->showToast(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static showToast(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "v1"    # Ljava/lang/String;
    .param p2, "v2"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x2

    const/high16 v7, 0x41c00000    # 24.0f

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v8, -0x1

    .line 56
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 57
    .local v0, "drawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 58
    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 59
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v4

    const v5, -0xbf7f

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 61
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 62
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 63
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 64
    invoke-static {v6}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v4

    invoke-static {v7}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v5

    invoke-static {v6}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v6

    invoke-static {v7}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 65
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 69
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 70
    .local v2, "textView":Landroid/widget/TextView;
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {v1, v2, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 73
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 74
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 75
    .restart local v2    # "textView":Landroid/widget/TextView;
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {v1, v2, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 78
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_1
    new-instance v3, Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 79
    .local v3, "toast":Landroid/widget/Toast;
    invoke-virtual {v3, v10}, Landroid/widget/Toast;->setDuration(I)V

    .line 80
    invoke-virtual {v3, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 81
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 82
    return-void
.end method
