.class public Lcom/game91/reflect/android9/Hack;
.super Ljava/lang/Object;
.source "Hack.java"


# static fields
.field private static final ERROR_SET_APPLICATION_FAILED:I = -0x14

.field private static UNKNOWN:I

.field private static unsealed:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "game91-hack"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 21
    const/16 v0, -0x270f

    sput v0, Lcom/game91/reflect/android9/Hack;->UNKNOWN:I

    .line 25
    sget v0, Lcom/game91/reflect/android9/Hack;->UNKNOWN:I

    sput v0, Lcom/game91/reflect/android9/Hack;->unsealed:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unseal(Landroid/content/Context;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 28
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-ge v5, v6, :cond_0

    .line 55
    :goto_0
    return v4

    .line 33
    :cond_0
    if-nez p0, :cond_1

    .line 34
    const/16 v4, -0xa

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 38
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 40
    .local v3, "targetSdkVersion":I
    const-class v5, Lcom/game91/reflect/android9/Hack;

    monitor-enter v5

    .line 41
    :try_start_0
    sget v4, Lcom/game91/reflect/android9/Hack;->unsealed:I

    sget v6, Lcom/game91/reflect/android9/Hack;->UNKNOWN:I

    if-ne v4, v6, :cond_2

    .line 42
    invoke-static {v3}, Lcom/game91/reflect/android9/Hack;->unsealNative(I)I

    move-result v4

    sput v4, Lcom/game91/reflect/android9/Hack;->unsealed:I

    .line 43
    sget v4, Lcom/game91/reflect/android9/Hack;->unsealed:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v4, :cond_2

    .line 45
    :try_start_1
    const-class v4, Landroid/content/pm/ApplicationInfo;

    const-string v6, "setHiddenApiEnforcementPolicy"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    .line 46
    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 47
    .local v2, "setHiddenApiEnforcementPolicy":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .end local v2    # "setHiddenApiEnforcementPolicy":Ljava/lang/reflect/Method;
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    sget v4, Lcom/game91/reflect/android9/Hack;->unsealed:I

    goto :goto_0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    const/16 v4, -0x14

    sput v4, Lcom/game91/reflect/android9/Hack;->unsealed:I

    goto :goto_1

    .line 54
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method private static native unsealNative(I)I
.end method
