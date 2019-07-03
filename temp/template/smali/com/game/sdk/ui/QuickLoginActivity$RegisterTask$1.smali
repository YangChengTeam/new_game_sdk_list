.class Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask$1;
.super Ljava/lang/Object;
.source "QuickLoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;->onPostExecute(Lcom/game/sdk/domain/LoginResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask$1;->this$1:Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 498
    iget-object v0, p0, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask$1;->this$1:Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;

    invoke-static {v0}, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;->access$2(Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;)Lcom/game/sdk/ui/QuickLoginActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/ui/QuickLoginActivity;->finish()V

    .line 499
    return-void
.end method
