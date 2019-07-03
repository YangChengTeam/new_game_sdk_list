.class public Lcom/game/sdk/view/ServiceDialog$NoUnderlineSpan;
.super Landroid/text/style/UnderlineSpan;
.source "ServiceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/view/ServiceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NoUnderlineSpan"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/view/ServiceDialog;


# direct methods
.method public constructor <init>(Lcom/game/sdk/view/ServiceDialog;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/game/sdk/view/ServiceDialog$NoUnderlineSpan;->this$0:Lcom/game/sdk/view/ServiceDialog;

    invoke-direct {p0}, Landroid/text/style/UnderlineSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 201
    const-string v0, "#333333"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 202
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 203
    return-void
.end method
