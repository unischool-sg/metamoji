.class public final Landroidx/browser/customtabs/CustomContentAction;
.super Ljava/lang/Object;
.source "CustomContentAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/customtabs/CustomContentAction$Builder;
    }
.end annotation


# static fields
.field static final KEY_ID:Ljava/lang/String; = "androidx.browser.customtabs.customcontentaction.ID"

.field static final KEY_LABEL:Ljava/lang/String; = "androidx.browser.customtabs.customcontentaction.LABEL"

.field static final KEY_PENDING_INTENT:Ljava/lang/String; = "androidx.browser.customtabs.customcontentaction.PENDING_INTENT"

.field static final KEY_TARGET_TYPE:Ljava/lang/String; = "androidx.browser.customtabs.customcontentaction.TARGET_TYPE"


# instance fields
.field private final mId:I

.field private final mLabel:Ljava/lang/String;

.field private final mPendingIntent:Landroid/app/PendingIntent;

.field private final mTargetType:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput p1, p0, Landroidx/browser/customtabs/CustomContentAction;->mId:I

    .line 124
    iput-object p2, p0, Landroidx/browser/customtabs/CustomContentAction;->mLabel:Ljava/lang/String;

    .line 125
    iput-object p3, p0, Landroidx/browser/customtabs/CustomContentAction;->mPendingIntent:Landroid/app/PendingIntent;

    .line 126
    iput p4, p0, Landroidx/browser/customtabs/CustomContentAction;->mTargetType:I

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Landroid/app/PendingIntent;ILandroidx/browser/customtabs/CustomContentAction$1;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/browser/customtabs/CustomContentAction;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;I)V

    return-void
.end method

.method static fromBundle(Landroid/os/Bundle;)Landroidx/browser/customtabs/CustomContentAction;
    .locals 6

    .line 177
    const-string v0, "androidx.browser.customtabs.customcontentaction.ID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 178
    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 180
    const-string v1, "androidx.browser.customtabs.customcontentaction.LABEL"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 184
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    const-string v5, "androidx.browser.customtabs.customcontentaction.PENDING_INTENT"

    if-lt v3, v4, :cond_2

    .line 185
    const-class v3, Landroid/app/PendingIntent;

    invoke-virtual {p0, v5, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    goto :goto_0

    .line 187
    :cond_2
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    :goto_0
    if-nez v3, :cond_3

    return-object v2

    .line 191
    :cond_3
    const-string v4, "androidx.browser.customtabs.customcontentaction.TARGET_TYPE"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v4, 0x1

    if-eq p0, v4, :cond_4

    const/4 v4, 0x2

    if-eq p0, v4, :cond_4

    return-object v2

    .line 197
    :cond_4
    new-instance v2, Landroidx/browser/customtabs/CustomContentAction;

    invoke-direct {v2, v0, v1, v3, p0}, Landroidx/browser/customtabs/CustomContentAction;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;I)V

    return-object v2
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 133
    iget v0, p0, Landroidx/browser/customtabs/CustomContentAction;->mId:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Landroidx/browser/customtabs/CustomContentAction;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 147
    iget-object v0, p0, Landroidx/browser/customtabs/CustomContentAction;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getTargetType()I
    .locals 1

    .line 154
    iget v0, p0, Landroidx/browser/customtabs/CustomContentAction;->mTargetType:I

    return v0
.end method

.method toBundle()Landroid/os/Bundle;
    .locals 3

    .line 162
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 163
    const-string v1, "androidx.browser.customtabs.customcontentaction.ID"

    iget v2, p0, Landroidx/browser/customtabs/CustomContentAction;->mId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 164
    const-string v1, "androidx.browser.customtabs.customcontentaction.LABEL"

    iget-object v2, p0, Landroidx/browser/customtabs/CustomContentAction;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v1, "androidx.browser.customtabs.customcontentaction.PENDING_INTENT"

    iget-object v2, p0, Landroidx/browser/customtabs/CustomContentAction;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 166
    const-string v1, "androidx.browser.customtabs.customcontentaction.TARGET_TYPE"

    iget v2, p0, Landroidx/browser/customtabs/CustomContentAction;->mTargetType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
