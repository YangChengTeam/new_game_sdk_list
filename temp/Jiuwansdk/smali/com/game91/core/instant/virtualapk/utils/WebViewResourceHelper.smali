.class public Lcom/game91/core/instant/virtualapk/utils/WebViewResourceHelper;
.super Ljava/lang/Object;
.source "WebViewResourceHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addChromeResourceIfNeeded(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 18
    invoke-static {p0}, Lcom/game91/core/instant/virtualapk/utils/WebViewResourceHelper;->getWebViewResourceDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 19
    .local v2, "resourceDir":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 32
    :cond_0
    :goto_0
    return v6

    .line 24
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/game91/core/instant/virtualapk/utils/WebViewResourceHelper;->getAddAssetPathMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 25
    .local v1, "m":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {v1, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 27
    .local v3, "ret":I
    if-lez v3, :cond_2

    move v4, v5

    :goto_1
    move v6, v4

    goto :goto_0

    :cond_2
    move v4, v6

    goto :goto_1

    .line 29
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "ret":I
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getAddAssetPathMethod()Ljava/lang/reflect/Method;
    .locals 7

    .prologue
    .line 36
    const/4 v2, 0x0

    .line 37
    .local v2, "m":Ljava/lang/reflect/Method;
    const-class v0, Landroid/content/res/AssetManager;

    .line 38
    .local v0, "c":Ljava/lang/Class;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 40
    :try_start_0
    const-string v3, "addAssetPathAsSharedLibrary"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 41
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-object v2

    .line 42
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 50
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    :try_start_1
    const-string v3, "addAssetPath"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 51
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 52
    :catch_1
    move-exception v1

    .line 53
    .restart local v1    # "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getWebViewPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 80
    .local v0, "sdk":I
    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    .line 81
    const/4 v1, 0x0

    .line 94
    :goto_0
    return-object v1

    .line 84
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 94
    invoke-static {}, Lcom/game91/core/instant/virtualapk/utils/WebViewResourceHelper;->getWebViewPackageName4More()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 87
    :pswitch_0
    invoke-static {}, Lcom/game91/core/instant/virtualapk/utils/WebViewResourceHelper;->getWebViewPackageName4Lollipop()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 89
    :pswitch_1
    invoke-static {}, Lcom/game91/core/instant/virtualapk/utils/WebViewResourceHelper;->getWebViewPackageName4M()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 91
    :pswitch_2
    invoke-static {}, Lcom/game91/core/instant/virtualapk/utils/WebViewResourceHelper;->getWebViewPackageName4N()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getWebViewPackageName4Lollipop()Ljava/lang/String;
    .locals 5

    .prologue
    .line 100
    :try_start_0
    const-string v1, "android.webkit.WebViewFactory"

    const-string v2, "getWebViewPackageName"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    return-object v1

    .line 101
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 102
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    const-string v1, "com.google.android.webview"

    goto :goto_0
.end method

.method private static getWebViewPackageName4M()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Lcom/game91/core/instant/virtualapk/utils/WebViewResourceHelper;->getWebViewPackageName4Lollipop()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getWebViewPackageName4More()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcom/game91/core/instant/virtualapk/utils/WebViewResourceHelper;->getWebViewPackageName4N()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getWebViewPackageName4N()Ljava/lang/String;
    .locals 6

    .prologue
    .line 114
    :try_start_0
    const-string v2, "android.webkit.WebViewFactory"

    const-string v3, "getWebViewContextAndSetProvider"

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 115
    .local v0, "c":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-object v2

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    const-string v2, "com.google.android.webview"

    goto :goto_0
.end method

.method private static getWebViewResourceDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-static {}, Lcom/game91/core/instant/virtualapk/utils/WebViewResourceHelper;->getWebViewPackageName()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "pkgName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    :goto_0
    return-object v3

    .line 66
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Lcom/game91/core/instant/virtualapk/utils/WebViewResourceHelper;->getWebViewPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x400

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 67
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 68
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 70
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
