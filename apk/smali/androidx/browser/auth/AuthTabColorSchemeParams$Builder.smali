.class public final Landroidx/browser/auth/AuthTabColorSchemeParams$Builder;
.super Ljava/lang/Object;
.source "AuthTabColorSchemeParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/auth/AuthTabColorSchemeParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mNavigationBarColor:Ljava/lang/Integer;

.field private mNavigationBarDividerColor:Ljava/lang/Integer;

.field private mToolbarColor:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroidx/browser/auth/AuthTabColorSchemeParams;
    .locals 5

    .line 175
    new-instance v0, Landroidx/browser/auth/AuthTabColorSchemeParams;

    iget-object v1, p0, Landroidx/browser/auth/AuthTabColorSchemeParams$Builder;->mToolbarColor:Ljava/lang/Integer;

    iget-object v2, p0, Landroidx/browser/auth/AuthTabColorSchemeParams$Builder;->mNavigationBarColor:Ljava/lang/Integer;

    iget-object v3, p0, Landroidx/browser/auth/AuthTabColorSchemeParams$Builder;->mNavigationBarDividerColor:Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/browser/auth/AuthTabColorSchemeParams;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroidx/browser/auth/AuthTabColorSchemeParams$1;)V

    return-object v0
.end method

.method public setNavigationBarColor(I)Landroidx/browser/auth/AuthTabColorSchemeParams$Builder;
    .locals 1

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    .line 156
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/browser/auth/AuthTabColorSchemeParams$Builder;->mNavigationBarColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setNavigationBarDividerColor(I)Landroidx/browser/auth/AuthTabColorSchemeParams$Builder;
    .locals 0

    .line 166
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/browser/auth/AuthTabColorSchemeParams$Builder;->mNavigationBarDividerColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setToolbarColor(I)Landroidx/browser/auth/AuthTabColorSchemeParams$Builder;
    .locals 1

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    .line 143
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/browser/auth/AuthTabColorSchemeParams$Builder;->mToolbarColor:Ljava/lang/Integer;

    return-object p0
.end method
