.class public Lcom/ss/android/common/lib/EventUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setAccessAcount(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 49
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 50
    invoke-static {p0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    const-string v0, "account_type"

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_0
    const-string v2, "is_success"

    if-eqz p1, :cond_1

    const-string v0, "yes"

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v0, "access_account"

    invoke-static {v0, v1}, Lcom/ss/android/common/lib/AppLogNewUtils;->onEventV3Bundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 54
    return-void

    .line 52
    :cond_1
    const-string v0, "no"

    goto :goto_0
.end method

.method public static setAccessPaymentChannel(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 209
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 210
    invoke-static {p0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    const-string v0, "payment_channel"

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_0
    const-string v2, "is_success"

    if-eqz p1, :cond_1

    const-string v0, "yes"

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v0, "access_payment_channel"

    invoke-static {v0, v1}, Lcom/ss/android/common/lib/AppLogNewUtils;->onEventV3Bundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 214
    return-void

    .line 212
    :cond_1
    const-string v0, "no"

    goto :goto_0
.end method

.method public static setAddCart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 3

    .prologue
    .line 122
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 123
    invoke-static {p0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    const-string v0, "content_type"

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    invoke-static {p1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    const-string v0, "content_name"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_1
    invoke-static {p2}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 128
    const-string v0, "content_id"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_2
    const-string v0, "content_num"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    const-string v2, "is_success"

    if-eqz p4, :cond_3

    const-string v0, "yes"

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v0, "add_cart"

    invoke-static {v0, v1}, Lcom/ss/android/common/lib/AppLogNewUtils;->onEventV3Bundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 132
    return-void

    .line 130
    :cond_3
    const-string v0, "no"

    goto :goto_0
.end method

.method public static setCheckout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 147
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 148
    invoke-static {p0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    const-string v0, "content_type"

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_0
    invoke-static {p1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    const-string v0, "content_name"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_1
    invoke-static {p2}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 153
    const-string v0, "content_id"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_2
    const-string v0, "content_num"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    const-string v2, "is_virtual_currency"

    if-eqz p4, :cond_5

    const-string v0, "yes"

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {p5}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 157
    const-string v0, "virtual_currency"

    invoke-virtual {v1, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_3
    invoke-static {p6}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 159
    const-string v0, "currency"

    invoke-virtual {v1, v0, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_4
    const-string v2, "is_success"

    if-eqz p7, :cond_6

    const-string v0, "yes"

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v0, "checkout"

    invoke-static {v0, v1}, Lcom/ss/android/common/lib/AppLogNewUtils;->onEventV3Bundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 163
    return-void

    .line 155
    :cond_5
    const-string v0, "no"

    goto :goto_0

    .line 160
    :cond_6
    const-string v0, "no"

    goto :goto_1
.end method

.method public static setLogin(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 23
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 24
    invoke-static {p0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    const-string v0, "method"

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_0
    const-string v2, "is_success"

    if-eqz p1, :cond_1

    const-string v0, "yes"

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v0, "log_in"

    invoke-static {v0, v1}, Lcom/ss/android/common/lib/AppLogNewUtils;->onEventV3Bundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 28
    return-void

    .line 26
    :cond_1
    const-string v0, "no"

    goto :goto_0
.end method

.method public static setPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)V
    .locals 6

    .prologue
    .line 178
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 179
    invoke-static {p0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    const-string v0, "content_type"

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_0
    invoke-static {p1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    const-string v0, "content_name"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_1
    invoke-static {p2}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 184
    const-string v0, "content_id"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_2
    const-string v0, "content_num"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 186
    invoke-static {p4}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 187
    const-string v0, "payment_channel"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_3
    invoke-static {p5}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 189
    const-string v0, "currency"

    invoke-virtual {v1, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_4
    const-string v2, "is_success"

    if-eqz p6, :cond_6

    const-string v0, "yes"

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v0, "currency_amount"

    invoke-virtual {v1, v0, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 192
    const-string v0, "purchase"

    invoke-static {v0, v1}, Lcom/ss/android/common/lib/AppLogNewUtils;->onEventV3Bundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 194
    const-string v1, "is_paid"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    if-eqz p6, :cond_5

    .line 197
    const-string v1, "total_currency_amount"

    int-to-long v2, p7

    invoke-static {}, Lcom/ss/android/common/applog/AppLog;->getCurrentTotalAmount()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_5
    invoke-static {v0}, Lcom/ss/android/common/applog/AppLog;->setHeaderInfo(Ljava/util/Map;)V

    .line 201
    return-void

    .line 190
    :cond_6
    const-string v0, "no"

    goto :goto_0
.end method

.method public static setQuest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 66
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 67
    invoke-static {p0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    const-string v0, "quest_id"

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    invoke-static {p1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    const-string v0, "quest_type"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_1
    invoke-static {p2}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 72
    const-string v0, "quest_name"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_2
    const-string v0, "quest_no"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    const-string v2, "is_success"

    if-eqz p4, :cond_4

    const-string v0, "yes"

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {p5}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 76
    const-string v0, "description"

    invoke-virtual {v1, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_3
    const-string v0, "quest"

    invoke-static {v0, v1}, Lcom/ss/android/common/lib/AppLogNewUtils;->onEventV3Bundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 79
    const-string v1, "is_quested"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {v0}, Lcom/ss/android/common/applog/AppLog;->setHeaderInfo(Ljava/util/Map;)V

    .line 81
    return-void

    .line 74
    :cond_4
    const-string v0, "no"

    goto :goto_0
.end method

.method public static setRegister(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 36
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 37
    invoke-static {p0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    const-string v0, "method"

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    const-string v2, "is_success"

    if-eqz p1, :cond_1

    const-string v0, "yes"

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v0, "register"

    invoke-static {v0, v1}, Lcom/ss/android/common/lib/AppLogNewUtils;->onEventV3Bundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 41
    return-void

    .line 39
    :cond_1
    const-string v0, "no"

    goto :goto_0
.end method

.method public static setUpdateLevel(I)V
    .locals 3

    .prologue
    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 89
    const-string v1, "level"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    const-string v1, "update_level"

    invoke-static {v1, v0}, Lcom/ss/android/common/lib/AppLogNewUtils;->onEventV3Bundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    const-string v1, "level"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {v0}, Lcom/ss/android/common/applog/AppLog;->setHeaderInfo(Ljava/util/Map;)V

    .line 94
    return-void
.end method

.method public static setViewContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 104
    invoke-static {p0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    const-string v1, "content_type"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    invoke-static {p1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 107
    const-string v1, "content_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_1
    invoke-static {p2}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 109
    const-string v1, "content_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_2
    const-string v1, "view_content"

    invoke-static {v1, v0}, Lcom/ss/android/common/lib/AppLogNewUtils;->onEventV3Bundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 111
    return-void
.end method
