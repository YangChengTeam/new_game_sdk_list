.class public Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;
    }
.end annotation


# static fields
.field private static mBuilder:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B; = null

.field private static final mDefaultTag:Ljava/lang/String; = "default_float_window_tag"

.field private static mFloatWindowMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow;->mBuilder:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow;->mFloatWindowMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$002(Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    sput-object p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow;->mFloatWindowMap:Ljava/util/Map;

    return-object p0
.end method

.method public static destroy()V
    .locals 1

    const-string v0, "default_float_window_tag"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow;->destroy(Ljava/lang/String;)V

    return-void
.end method

.method public static destroy(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow;->mFloatWindowMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow;->mFloatWindowMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow;->mFloatWindowMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindow;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindow;->dismiss()V

    sget-object v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow;->mFloatWindowMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static get()Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindow;
    .locals 1

    const-string v0, "default_float_window_tag"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow;->get(Ljava/lang/String;)Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindow;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;)Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindow;
    .locals 1

    sget-object v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow;->mFloatWindowMap:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow;->mFloatWindowMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindow;

    goto :goto_0
.end method

.method public static with(Landroid/content/Context;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;
    .locals 1

    new-instance v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow;->mBuilder:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    return-object v0
.end method
