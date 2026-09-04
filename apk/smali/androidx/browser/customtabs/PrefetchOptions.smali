.class public final Landroidx/browser/customtabs/PrefetchOptions;
.super Ljava/lang/Object;
.source "PrefetchOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/customtabs/PrefetchOptions$Builder;
    }
.end annotation


# static fields
.field private static final KEY_REQUIRES_ANONYMOUS_IP_WHEN_CROSS_ORIGIN:Ljava/lang/String; = "androidx.browser.customtabs.PrefetchOptions.KEY_REQUIRES_ANONYMOUS_IP_WHEN_CROSS_ORIGIN"

.field private static final KEY_SOURCE_ORIGIN:Ljava/lang/String; = "androidx.browser.customtabs.PrefetchOptions.KEY_SOURCE_ORIGIN"


# instance fields
.field public final requiresAnonymousIpWhenCrossOrigin:Z

.field public final sourceOrigin:Landroid/net/Uri;


# direct methods
.method constructor <init>(ZLandroid/net/Uri;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean p1, p0, Landroidx/browser/customtabs/PrefetchOptions;->requiresAnonymousIpWhenCrossOrigin:Z

    .line 46
    iput-object p2, p0, Landroidx/browser/customtabs/PrefetchOptions;->sourceOrigin:Landroid/net/Uri;

    return-void
.end method

.method static fromBundle(Landroid/os/Bundle;)Landroidx/browser/customtabs/PrefetchOptions;
    .locals 3

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "androidx.browser.customtabs.PrefetchOptions.KEY_SOURCE_ORIGIN"

    if-lt v0, v1, :cond_0

    .line 76
    const-class v0, Landroid/net/Uri;

    invoke-static {p0, v2, v0}, Landroidx/browser/customtabs/Api33Impl;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 82
    :goto_0
    new-instance v1, Landroidx/browser/customtabs/PrefetchOptions;

    const-string v2, "androidx.browser.customtabs.PrefetchOptions.KEY_REQUIRES_ANONYMOUS_IP_WHEN_CROSS_ORIGIN"

    .line 83
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-direct {v1, p0, v0}, Landroidx/browser/customtabs/PrefetchOptions;-><init>(ZLandroid/net/Uri;)V

    return-object v1
.end method


# virtual methods
.method toBundle()Landroid/os/Bundle;
    .locals 3

    .line 63
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 64
    const-string v1, "androidx.browser.customtabs.PrefetchOptions.KEY_REQUIRES_ANONYMOUS_IP_WHEN_CROSS_ORIGIN"

    iget-boolean v2, p0, Landroidx/browser/customtabs/PrefetchOptions;->requiresAnonymousIpWhenCrossOrigin:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    iget-object v1, p0, Landroidx/browser/customtabs/PrefetchOptions;->sourceOrigin:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 67
    const-string v2, "androidx.browser.customtabs.PrefetchOptions.KEY_SOURCE_ORIGIN"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-object v0
.end method
