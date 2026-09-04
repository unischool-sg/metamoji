.class public final Landroidx/browser/auth/AuthTabColorSchemeParams;
.super Ljava/lang/Object;
.source "AuthTabColorSchemeParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/auth/AuthTabColorSchemeParams$Builder;
    }
.end annotation


# instance fields
.field private final mNavigationBarColor:Ljava/lang/Integer;

.field private final mNavigationBarDividerColor:Ljava/lang/Integer;

.field private final mToolbarColor:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroidx/browser/auth/AuthTabColorSchemeParams;->mToolbarColor:Ljava/lang/Integer;

    .line 52
    iput-object p2, p0, Landroidx/browser/auth/AuthTabColorSchemeParams;->mNavigationBarColor:Ljava/lang/Integer;

    .line 53
    iput-object p3, p0, Landroidx/browser/auth/AuthTabColorSchemeParams;->mNavigationBarDividerColor:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroidx/browser/auth/AuthTabColorSchemeParams$1;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroidx/browser/auth/AuthTabColorSchemeParams;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method static fromBundle(Landroid/os/Bundle;)Landroidx/browser/auth/AuthTabColorSchemeParams;
    .locals 4

    if-nez p0, :cond_0

    .line 100
    new-instance p0, Landroid/os/Bundle;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 104
    :cond_0
    new-instance v0, Landroidx/browser/auth/AuthTabColorSchemeParams;

    const-string v1, "android.support.customtabs.extra.TOOLBAR_COLOR"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const-string v2, "androidx.browser.customtabs.extra.NAVIGATION_BAR_COLOR"

    .line 105
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v3, "androidx.browser.customtabs.extra.NAVIGATION_BAR_DIVIDER_COLOR"

    .line 106
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2, p0}, Landroidx/browser/auth/AuthTabColorSchemeParams;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method


# virtual methods
.method public getNavigationBarColor()Ljava/lang/Integer;
    .locals 1

    .line 65
    iget-object v0, p0, Landroidx/browser/auth/AuthTabColorSchemeParams;->mNavigationBarColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNavigationBarDividerColor()Ljava/lang/Integer;
    .locals 1

    .line 71
    iget-object v0, p0, Landroidx/browser/auth/AuthTabColorSchemeParams;->mNavigationBarDividerColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getToolbarColor()Ljava/lang/Integer;
    .locals 1

    .line 59
    iget-object v0, p0, Landroidx/browser/auth/AuthTabColorSchemeParams;->mToolbarColor:Ljava/lang/Integer;

    return-object v0
.end method

.method toBundle()Landroid/os/Bundle;
    .locals 3

    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 81
    iget-object v1, p0, Landroidx/browser/auth/AuthTabColorSchemeParams;->mToolbarColor:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 82
    const-string v2, "android.support.customtabs.extra.TOOLBAR_COLOR"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    :cond_0
    iget-object v1, p0, Landroidx/browser/auth/AuthTabColorSchemeParams;->mNavigationBarColor:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 85
    const-string v2, "androidx.browser.customtabs.extra.NAVIGATION_BAR_COLOR"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    :cond_1
    iget-object v1, p0, Landroidx/browser/auth/AuthTabColorSchemeParams;->mNavigationBarDividerColor:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 88
    const-string v2, "androidx.browser.customtabs.extra.NAVIGATION_BAR_DIVIDER_COLOR"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    return-object v0
.end method

.method withDefaults(Landroidx/browser/auth/AuthTabColorSchemeParams;)Landroidx/browser/auth/AuthTabColorSchemeParams;
    .locals 4

    .line 114
    new-instance v0, Landroidx/browser/auth/AuthTabColorSchemeParams;

    .line 115
    iget-object v1, p0, Landroidx/browser/auth/AuthTabColorSchemeParams;->mToolbarColor:Ljava/lang/Integer;

    if-nez v1, :cond_0

    iget-object v1, p1, Landroidx/browser/auth/AuthTabColorSchemeParams;->mToolbarColor:Ljava/lang/Integer;

    .line 116
    :cond_0
    iget-object v2, p0, Landroidx/browser/auth/AuthTabColorSchemeParams;->mNavigationBarColor:Ljava/lang/Integer;

    if-nez v2, :cond_1

    iget-object v2, p1, Landroidx/browser/auth/AuthTabColorSchemeParams;->mNavigationBarColor:Ljava/lang/Integer;

    .line 117
    :cond_1
    iget-object v3, p0, Landroidx/browser/auth/AuthTabColorSchemeParams;->mNavigationBarDividerColor:Ljava/lang/Integer;

    if-nez v3, :cond_2

    iget-object v3, p1, Landroidx/browser/auth/AuthTabColorSchemeParams;->mNavigationBarDividerColor:Ljava/lang/Integer;

    .line 118
    :cond_2
    invoke-direct {v0, v1, v2, v3}, Landroidx/browser/auth/AuthTabColorSchemeParams;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method
