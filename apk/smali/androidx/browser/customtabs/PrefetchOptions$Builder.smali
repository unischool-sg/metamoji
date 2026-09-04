.class public final Landroidx/browser/customtabs/PrefetchOptions$Builder;
.super Ljava/lang/Object;
.source "PrefetchOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/customtabs/PrefetchOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mRequiresAnonymousIpWhenCrossOrigin:Z

.field private mSourceOrigin:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroidx/browser/customtabs/PrefetchOptions;
    .locals 3

    .line 123
    new-instance v0, Landroidx/browser/customtabs/PrefetchOptions;

    iget-boolean v1, p0, Landroidx/browser/customtabs/PrefetchOptions$Builder;->mRequiresAnonymousIpWhenCrossOrigin:Z

    iget-object v2, p0, Landroidx/browser/customtabs/PrefetchOptions$Builder;->mSourceOrigin:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroidx/browser/customtabs/PrefetchOptions;-><init>(ZLandroid/net/Uri;)V

    return-object v0
.end method

.method public setRequiresAnonymousIpWhenCrossOrigin(Z)Landroidx/browser/customtabs/PrefetchOptions$Builder;
    .locals 0

    .line 106
    iput-boolean p1, p0, Landroidx/browser/customtabs/PrefetchOptions$Builder;->mRequiresAnonymousIpWhenCrossOrigin:Z

    return-object p0
.end method

.method public setSourceOrigin(Landroid/net/Uri;)Landroidx/browser/customtabs/PrefetchOptions$Builder;
    .locals 0

    .line 115
    iput-object p1, p0, Landroidx/browser/customtabs/PrefetchOptions$Builder;->mSourceOrigin:Landroid/net/Uri;

    return-object p0
.end method
