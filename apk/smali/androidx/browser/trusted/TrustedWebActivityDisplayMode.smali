.class public interface abstract Landroidx/browser/trusted/TrustedWebActivityDisplayMode;
.super Ljava/lang/Object;
.source "TrustedWebActivityDisplayMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/trusted/TrustedWebActivityDisplayMode$DefaultMode;,
        Landroidx/browser/trusted/TrustedWebActivityDisplayMode$MinimalUiMode;,
        Landroidx/browser/trusted/TrustedWebActivityDisplayMode$BrowserMode;,
        Landroidx/browser/trusted/TrustedWebActivityDisplayMode$ImmersiveMode;
    }
.end annotation


# static fields
.field public static final KEY_ID:Ljava/lang/String; = "androidx.browser.trusted.displaymode.KEY_ID"


# direct methods
.method public static fromBundle(Landroid/os/Bundle;)Landroidx/browser/trusted/TrustedWebActivityDisplayMode;
    .locals 2

    .line 33
    const-string v0, "androidx.browser.trusted.displaymode.KEY_ID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p0, 0x2

    if-eq v0, p0, :cond_1

    const/4 p0, 0x3

    if-eq v0, p0, :cond_0

    .line 42
    new-instance p0, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$DefaultMode;

    invoke-direct {p0}, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$DefaultMode;-><init>()V

    return-object p0

    .line 39
    :cond_0
    new-instance p0, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$MinimalUiMode;

    invoke-direct {p0}, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$MinimalUiMode;-><init>()V

    return-object p0

    .line 37
    :cond_1
    new-instance p0, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$BrowserMode;

    invoke-direct {p0}, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$BrowserMode;-><init>()V

    return-object p0

    .line 35
    :cond_2
    invoke-static {p0}, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$ImmersiveMode;->fromBundle(Landroid/os/Bundle;)Landroidx/browser/trusted/TrustedWebActivityDisplayMode;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract toBundle()Landroid/os/Bundle;
.end method
