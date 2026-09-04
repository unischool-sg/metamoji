.class public final Landroidx/browser/customtabs/ContentActionSelectedData;
.super Ljava/lang/Object;
.source "ContentActionSelectedData.java"


# instance fields
.field private final mIntent:Landroid/content/Intent;


# direct methods
.method private constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroidx/browser/customtabs/ContentActionSelectedData;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public static fromIntent(Landroid/content/Intent;)Landroidx/browser/customtabs/ContentActionSelectedData;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_0
    new-instance v0, Landroidx/browser/customtabs/ContentActionSelectedData;

    invoke-direct {v0, p0}, Landroidx/browser/customtabs/ContentActionSelectedData;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method


# virtual methods
.method public getClickedContentTargetType()I
    .locals 3

    .line 97
    iget-object v0, p0, Landroidx/browser/customtabs/ContentActionSelectedData;->mIntent:Landroid/content/Intent;

    const-string v1, "androidx.browser.customtabs.extra.CLICKED_CONTENT_TARGET_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getImageAltText()Ljava/lang/String;
    .locals 2

    .line 145
    iget-object v0, p0, Landroidx/browser/customtabs/ContentActionSelectedData;->mIntent:Landroid/content/Intent;

    const-string v1, "androidx.browser.customtabs.extra.CONTEXT_IMAGE_ALT_TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageDataUri()Landroid/net/Uri;
    .locals 3

    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 129
    iget-object v0, p0, Landroidx/browser/customtabs/ContentActionSelectedData;->mIntent:Landroid/content/Intent;

    const-string v1, "androidx.browser.customtabs.extra.CONTEXT_IMAGE_DATA_URI"

    const-class v2, Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 2

    .line 108
    iget-object v0, p0, Landroidx/browser/customtabs/ContentActionSelectedData;->mIntent:Landroid/content/Intent;

    const-string v1, "androidx.browser.customtabs.extra.CONTEXT_IMAGE_URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 180
    iget-object v0, p0, Landroidx/browser/customtabs/ContentActionSelectedData;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getLinkText()Ljava/lang/String;
    .locals 2

    .line 169
    iget-object v0, p0, Landroidx/browser/customtabs/ContentActionSelectedData;->mIntent:Landroid/content/Intent;

    const-string v1, "androidx.browser.customtabs.extra.CONTEXT_LINK_TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLinkUrl()Ljava/lang/String;
    .locals 2

    .line 158
    iget-object v0, p0, Landroidx/browser/customtabs/ContentActionSelectedData;->mIntent:Landroid/content/Intent;

    const-string v1, "androidx.browser.customtabs.extra.CONTEXT_LINK_URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageUrl()Landroid/net/Uri;
    .locals 1

    .line 69
    iget-object v0, p0, Landroidx/browser/customtabs/ContentActionSelectedData;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getTriggeredActionId()I
    .locals 3

    .line 81
    iget-object v0, p0, Landroidx/browser/customtabs/ContentActionSelectedData;->mIntent:Landroid/content/Intent;

    const-string v1, "androidx.browser.customtabs.extra.TRIGGERED_CUSTOM_CONTENT_ACTION_ID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
