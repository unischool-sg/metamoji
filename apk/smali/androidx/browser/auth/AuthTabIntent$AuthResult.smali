.class public final Landroidx/browser/auth/AuthTabIntent$AuthResult;
.super Ljava/lang/Object;
.source "AuthTabIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/auth/AuthTabIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthResult"
.end annotation


# instance fields
.field public final resultCode:I

.field public final resultUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(ILandroid/net/Uri;)V
    .locals 0

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    iput p1, p0, Landroidx/browser/auth/AuthTabIntent$AuthResult;->resultCode:I

    .line 489
    iput-object p2, p0, Landroidx/browser/auth/AuthTabIntent$AuthResult;->resultUri:Landroid/net/Uri;

    return-void
.end method
