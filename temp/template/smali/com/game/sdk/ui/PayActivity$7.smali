.class Lcom/game/sdk/ui/PayActivity$7;
.super Ljava/lang/Object;
.source "PayActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/PayActivity;->showCouponList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/PayActivity;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/PayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "row"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "adapterview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/high16 v7, 0x42c80000    # 100.0f

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 619
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$31(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 622
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$32(Lcom/game/sdk/ui/PayActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 624
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$32(Lcom/game/sdk/ui/PayActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/game/sdk/domain/CouponInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/CouponInfo;->goods_uc_money:Ljava/lang/String;

    invoke-static {v3}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 625
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$33(Lcom/game/sdk/ui/PayActivity;)F

    move-result v5

    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$32(Lcom/game/sdk/ui/PayActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/game/sdk/domain/CouponInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/CouponInfo;->goods_uc_money:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    cmpg-float v3, v5, v3

    if-gez v3, :cond_1

    .line 626
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    const-string v4, "\u4e0d\u6ee1\u8db3\u4f18\u60e0\u5238\u4f7f\u7528\u6761\u4ef6,\u8bf7\u9009\u62e9\u5176\u4ed6\u4f18\u60e0"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 627
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$32(Lcom/game/sdk/ui/PayActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/game/sdk/domain/CouponInfo;

    invoke-static {v5, v3}, Lcom/game/sdk/ui/PayActivity;->access$34(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/domain/CouponInfo;)V

    .line 634
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$35(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/domain/CouponInfo;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 635
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$35(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/domain/CouponInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/game/sdk/domain/CouponInfo;->cardId:Ljava/lang/String;

    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v5}, Lcom/game/sdk/ui/PayActivity;->access$27(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/domain/CouponInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/game/sdk/domain/CouponInfo;->cardId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 636
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$27(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/domain/CouponInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/game/sdk/domain/CouponInfo;->goodsWorth:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 637
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$27(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/domain/CouponInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/game/sdk/domain/CouponInfo;->goodsWorth:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 639
    .local v0, "goodsWorth":F
    :goto_1
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$35(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/domain/CouponInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/game/sdk/domain/CouponInfo;->goodsWorth:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 640
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$35(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/domain/CouponInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/game/sdk/domain/CouponInfo;->goodsWorth:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 642
    .local v1, "lastGoodsWorth":F
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v5}, Lcom/game/sdk/ui/PayActivity;->access$27(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/domain/CouponInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/game/sdk/domain/CouponInfo;->goodsName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\u5143"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 643
    .local v2, "temp":Ljava/lang/String;
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$25(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$26(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 645
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$26(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 647
    cmpl-float v3, v0, v4

    if-lez v3, :cond_2

    cmpl-float v3, v1, v4

    if-lez v3, :cond_2

    .line 648
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v5}, Lcom/game/sdk/ui/PayActivity;->access$3(Lcom/game/sdk/ui/PayActivity;)F

    move-result v5

    add-float/2addr v5, v1

    sub-float/2addr v5, v0

    invoke-static {v3, v5}, Lcom/game/sdk/ui/PayActivity;->access$14(Lcom/game/sdk/ui/PayActivity;F)V

    .line 650
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v5}, Lcom/game/sdk/ui/PayActivity;->access$3(Lcom/game/sdk/ui/PayActivity;)F

    move-result v5

    mul-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    invoke-static {v3, v5}, Lcom/game/sdk/ui/PayActivity;->access$14(Lcom/game/sdk/ui/PayActivity;F)V

    .line 652
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$28(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$3(Lcom/game/sdk/ui/PayActivity;)F

    move-result v3

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v4}, Lcom/game/sdk/ui/PayActivity;->access$3(Lcom/game/sdk/ui/PayActivity;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    :cond_2
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v4}, Lcom/game/sdk/ui/PayActivity;->access$27(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/domain/CouponInfo;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/game/sdk/ui/PayActivity;->access$29(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/domain/CouponInfo;)V

    goto/16 :goto_0

    .end local v0    # "goodsWorth":F
    .end local v1    # "lastGoodsWorth":F
    .end local v2    # "temp":Ljava/lang/String;
    :cond_3
    move v0, v4

    .line 637
    goto/16 :goto_1

    .restart local v0    # "goodsWorth":F
    :cond_4
    move v1, v4

    .line 640
    goto/16 :goto_2

    .line 652
    .restart local v1    # "lastGoodsWorth":F
    .restart local v2    # "temp":Ljava/lang/String;
    :cond_5
    const-string v3, "0"

    goto :goto_3

    .line 657
    .end local v0    # "goodsWorth":F
    .end local v1    # "lastGoodsWorth":F
    .end local v2    # "temp":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v5}, Lcom/game/sdk/ui/PayActivity;->access$27(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/domain/CouponInfo;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/game/sdk/ui/PayActivity;->access$29(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/domain/CouponInfo;)V

    .line 658
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$27(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/domain/CouponInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/game/sdk/domain/CouponInfo;->goodsWorth:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 659
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$27(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/domain/CouponInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/game/sdk/domain/CouponInfo;->goodsWorth:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 661
    .restart local v0    # "goodsWorth":F
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v5}, Lcom/game/sdk/ui/PayActivity;->access$27(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/domain/CouponInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/game/sdk/domain/CouponInfo;->goodsName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\u5143"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 662
    .restart local v2    # "temp":Ljava/lang/String;
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$25(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$26(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 664
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$26(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 666
    cmpl-float v3, v0, v4

    if-lez v3, :cond_0

    .line 667
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$3(Lcom/game/sdk/ui/PayActivity;)F

    move-result v5

    sub-float/2addr v5, v0

    invoke-static {v3, v5}, Lcom/game/sdk/ui/PayActivity;->access$14(Lcom/game/sdk/ui/PayActivity;F)V

    .line 668
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v5}, Lcom/game/sdk/ui/PayActivity;->access$3(Lcom/game/sdk/ui/PayActivity;)F

    move-result v5

    mul-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    invoke-static {v3, v5}, Lcom/game/sdk/ui/PayActivity;->access$14(Lcom/game/sdk/ui/PayActivity;F)V

    .line 669
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$28(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$3(Lcom/game/sdk/ui/PayActivity;)F

    move-result v3

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity$7;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v4}, Lcom/game/sdk/ui/PayActivity;->access$3(Lcom/game/sdk/ui/PayActivity;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .end local v0    # "goodsWorth":F
    .end local v2    # "temp":Ljava/lang/String;
    :cond_7
    move v0, v4

    .line 659
    goto/16 :goto_4

    .line 669
    .restart local v0    # "goodsWorth":F
    .restart local v2    # "temp":Ljava/lang/String;
    :cond_8
    const-string v3, "0"

    goto :goto_5
.end method
