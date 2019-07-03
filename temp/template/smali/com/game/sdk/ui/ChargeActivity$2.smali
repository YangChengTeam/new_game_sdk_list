.class Lcom/game/sdk/ui/ChargeActivity$2;
.super Ljava/lang/Object;
.source "ChargeActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/ChargeActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/ChargeActivity;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/ChargeActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/ChargeActivity$2;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 421
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 416
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 380
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 382
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 383
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$2;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-static {v2}, Lcom/game/sdk/ui/ChargeActivity;->access$30(Lcom/game/sdk/ui/ChargeActivity;)Landroid/widget/EditText;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$2;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v2, v2, Lcom/game/sdk/ui/ChargeActivity;->tvs:[Landroid/widget/TextView;

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 396
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$2;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-static {v2}, Lcom/game/sdk/ui/ChargeActivity;->access$31(Lcom/game/sdk/ui/ChargeActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$2;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-static {v2}, Lcom/game/sdk/ui/ChargeActivity;->access$32(Lcom/game/sdk/ui/ChargeActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$2;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-static {v2}, Lcom/game/sdk/ui/ChargeActivity;->access$5(Lcom/game/sdk/ui/ChargeActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 400
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$2;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/game/sdk/ui/ChargeActivity$2;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-static {v4}, Lcom/game/sdk/ui/ChargeActivity;->access$33(Lcom/game/sdk/ui/ChargeActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/game/sdk/ui/ChargeActivity$2;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-static {v5}, Lcom/game/sdk/ui/ChargeActivity;->access$34(Lcom/game/sdk/ui/ChargeActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/game/sdk/ui/ChargeActivity$2;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-static {v6}, Lcom/game/sdk/ui/ChargeActivity;->access$35(Lcom/game/sdk/ui/ChargeActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/game/sdk/ui/ChargeActivity;->countGameMoney(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    .line 401
    .local v0, "gameMoney":F
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$2;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-static {v2}, Lcom/game/sdk/ui/ChargeActivity;->access$36(Lcom/game/sdk/ui/ChargeActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 389
    .end local v0    # "gameMoney":F
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iget-object v3, p0, Lcom/game/sdk/ui/ChargeActivity$2;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v3, v3, Lcom/game/sdk/ui/ChargeActivity;->chargeMoneys:[I

    aget v3, v3, v1

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    .line 390
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$2;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v2, v2, Lcom/game/sdk/ui/ChargeActivity;->chargeLayouts:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v1

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 387
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 392
    :cond_3
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$2;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v2, v2, Lcom/game/sdk/ui/ChargeActivity;->chargeLayouts:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setSelected(Z)V

    goto :goto_2

    .line 404
    .end local v1    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$2;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-static {v2}, Lcom/game/sdk/ui/ChargeActivity;->access$30(Lcom/game/sdk/ui/ChargeActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$2;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-static {v2}, Lcom/game/sdk/ui/ChargeActivity;->access$37(Lcom/game/sdk/ui/ChargeActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$2;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-static {v2}, Lcom/game/sdk/ui/ChargeActivity;->access$31(Lcom/game/sdk/ui/ChargeActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$2;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-static {v2}, Lcom/game/sdk/ui/ChargeActivity;->access$32(Lcom/game/sdk/ui/ChargeActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$2;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-static {v2}, Lcom/game/sdk/ui/ChargeActivity;->access$36(Lcom/game/sdk/ui/ChargeActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
