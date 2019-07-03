.class Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;
.super Landroid/content/BroadcastReceiver;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field private static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field private static final delay:J = 0x12cL

.field private static num:I

.field private static sResumedListener:Lcom/duoyou/gamesdk/c/view/floatwindow/ResumedListener;


# instance fields
.field private activities:[Ljava/lang/Class;

.field private appBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mLifecycleListener:Lcom/duoyou/gamesdk/c/view/floatwindow/LifecycleListener;

.field private resumeCount:I

.field private showFlag:Z

.field private startCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->num:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Z[Ljava/lang/Class;Lcom/duoyou/gamesdk/c/view/floatwindow/LifecycleListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-boolean p2, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->showFlag:Z

    iput-object p3, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->activities:[Ljava/lang/Class;

    sget v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->num:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->num:I

    iput-object p4, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->mLifecycleListener:Lcom/duoyou/gamesdk/c/view/floatwindow/LifecycleListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;)I
    .locals 1

    iget v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->resumeCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->appBackground:Z

    return p1
.end method

.method static synthetic access$200(Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;)Lcom/duoyou/gamesdk/c/view/floatwindow/LifecycleListener;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->mLifecycleListener:Lcom/duoyou/gamesdk/c/view/floatwindow/LifecycleListener;

    return-object v0
.end method

.method private needShow(Landroid/app/Activity;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->activities:[Ljava/lang/Class;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->activities:[Ljava/lang/Class;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    invoke-virtual {v5, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->showFlag:Z

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-boolean v2, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->showFlag:Z

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static setResumedListener(Lcom/duoyou/gamesdk/c/view/floatwindow/ResumedListener;)V
    .locals 0

    sput-object p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->sResumedListener:Lcom/duoyou/gamesdk/c/view/floatwindow/ResumedListener;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->mLifecycleListener:Lcom/duoyou/gamesdk/c/view/floatwindow/LifecycleListener;

    invoke-interface {v0, p1}, Lcom/duoyou/gamesdk/c/view/floatwindow/LifecycleListener;->onHide(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    iget v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->resumeCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->resumeCount:I

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle$1;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle$1;-><init>(Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->sResumedListener:Lcom/duoyou/gamesdk/c/view/floatwindow/ResumedListener;

    if-eqz v0, :cond_0

    sget v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->num:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->num:I

    sget v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->num:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->sResumedListener:Lcom/duoyou/gamesdk/c/view/floatwindow/ResumedListener;

    invoke-interface {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/ResumedListener;->onResumed()V

    const/4 v0, 0x0

    sput-object v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->sResumedListener:Lcom/duoyou/gamesdk/c/view/floatwindow/ResumedListener;

    :cond_0
    iget v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->resumeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->resumeCount:I

    invoke-direct {p0, p1}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->needShow(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->mLifecycleListener:Lcom/duoyou/gamesdk/c/view/floatwindow/LifecycleListener;

    invoke-interface {v0, p1}, Lcom/duoyou/gamesdk/c/view/floatwindow/LifecycleListener;->onShow(Landroid/app/Activity;)V

    :goto_0
    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->appBackground:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->appBackground:Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->mLifecycleListener:Lcom/duoyou/gamesdk/c/view/floatwindow/LifecycleListener;

    invoke-interface {v0, p1}, Lcom/duoyou/gamesdk/c/view/floatwindow/LifecycleListener;->onHide(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    iget v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->startCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->startCount:I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    iget v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->startCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->startCount:I

    iget v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->startCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->mLifecycleListener:Lcom/duoyou/gamesdk/c/view/floatwindow/LifecycleListener;

    invoke-interface {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/LifecycleListener;->onBackToDesktop()V

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "reason"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "homekey"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->mLifecycleListener:Lcom/duoyou/gamesdk/c/view/floatwindow/LifecycleListener;

    invoke-interface {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/LifecycleListener;->onBackToDesktop()V

    :cond_0
    return-void
.end method
