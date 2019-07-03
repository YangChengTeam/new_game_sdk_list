.class Lcom/game/sdk/ui/fragment/MainFragment$2;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Lcom/game/sdk/view/SlideSwitchButton$OnStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/fragment/MainFragment;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/fragment/MainFragment;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/fragment/MainFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/MainFragment$2;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 331
    if-eqz p1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment$2;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/MainFragment;->access$4(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v0

    const-string v1, "is_auto_login"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/game/sdk/utils/PreferenceUtil;->putBoolean(Ljava/lang/String;Z)V

    .line 338
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment$2;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/MainFragment;->access$4(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v0

    const-string v1, "is_auto_login"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/game/sdk/utils/PreferenceUtil;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method
