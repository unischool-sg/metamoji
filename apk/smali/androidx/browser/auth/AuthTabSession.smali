.class public final Landroidx/browser/auth/AuthTabSession;
.super Ljava/lang/Object;
.source "AuthTabSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/auth/AuthTabSession$PendingSession;
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/support/customtabs/IAuthTabCallback;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mId:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/support/customtabs/IAuthTabCallback;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroidx/browser/auth/AuthTabSession;->mCallback:Landroid/support/customtabs/IAuthTabCallback;

    .line 58
    iput-object p2, p0, Landroidx/browser/auth/AuthTabSession;->mComponentName:Landroid/content/ComponentName;

    .line 59
    iput-object p3, p0, Landroidx/browser/auth/AuthTabSession;->mId:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method getBinder()Landroid/os/IBinder;
    .locals 1

    .line 63
    iget-object v0, p0, Landroidx/browser/auth/AuthTabSession;->mCallback:Landroid/support/customtabs/IAuthTabCallback;

    invoke-interface {v0}, Landroid/support/customtabs/IAuthTabCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 67
    iget-object v0, p0, Landroidx/browser/auth/AuthTabSession;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method getId()Landroid/app/PendingIntent;
    .locals 1

    .line 72
    iget-object v0, p0, Landroidx/browser/auth/AuthTabSession;->mId:Landroid/app/PendingIntent;

    return-object v0
.end method
