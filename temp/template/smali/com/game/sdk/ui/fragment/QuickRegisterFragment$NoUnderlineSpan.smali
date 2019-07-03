.class public Lcom/game/sdk/ui/fragment/QuickRegisterFragment$NoUnderlineSpan;
.super Landroid/text/style/UnderlineSpan;
.source "QuickRegisterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/fragment/QuickRegisterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NoUnderlineSpan"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/fragment/QuickRegisterFragment;


# direct methods
.method public constructor <init>(Lcom/game/sdk/ui/fragment/QuickRegisterFragment;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$NoUnderlineSpan;->this$0:Lcom/game/sdk/ui/fragment/QuickRegisterFragment;

    invoke-direct {p0}, Landroid/text/style/UnderlineSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 363
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 364
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 365
    return-void
.end method
