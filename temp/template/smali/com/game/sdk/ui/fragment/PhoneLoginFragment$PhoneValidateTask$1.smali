.class Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask$1;
.super Ljava/lang/Object;
.source "PhoneLoginFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->onPostExecute(Lcom/game/sdk/domain/LoginResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask$1;->this$1:Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;

    .line 782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 785
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask$1;->this$1:Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->access$2(Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;)Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 786
    return-void
.end method
