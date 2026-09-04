.class public final Landroidx/browser/auth/AuthTabSessionToken;
.super Ljava/lang/Object;
.source "AuthTabSessionToken.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/auth/AuthTabSessionToken$MockCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AuthTabSessionToken"


# instance fields
.field private final mCallback:Landroidx/browser/auth/AuthTabCallback;

.field private final mCallbackBinder:Landroid/support/customtabs/IAuthTabCallback;

.field private final mSessionId:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/support/customtabs/IAuthTabCallback;Landroid/app/PendingIntent;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AuthTabSessionToken must have either a session id or a callback (or both)."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/browser/auth/AuthTabSessionToken;->mCallbackBinder:Landroid/support/customtabs/IAuthTabCallback;

    .line 75
    iput-object p2, p0, Landroidx/browser/auth/AuthTabSessionToken;->mSessionId:Landroid/app/PendingIntent;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    .line 77
    :cond_2
    new-instance p1, Landroidx/browser/auth/AuthTabSessionToken$1;

    invoke-direct {p1, p0}, Landroidx/browser/auth/AuthTabSessionToken$1;-><init>(Landroidx/browser/auth/AuthTabSessionToken;)V

    :goto_1
    iput-object p1, p0, Landroidx/browser/auth/AuthTabSessionToken;->mCallback:Landroidx/browser/auth/AuthTabCallback;

    return-void
.end method

.method static synthetic access$000(Landroidx/browser/auth/AuthTabSessionToken;)Landroid/support/customtabs/IAuthTabCallback;
    .locals 0

    .line 38
    iget-object p0, p0, Landroidx/browser/auth/AuthTabSessionToken;->mCallbackBinder:Landroid/support/customtabs/IAuthTabCallback;

    return-object p0
.end method

.method public static createSessionTokenFromIntent(Landroid/content/Intent;)Landroidx/browser/auth/AuthTabSessionToken;
    .locals 4

    .line 129
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 131
    :cond_0
    const-string v2, "android.support.customtabs.extra.SESSION"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 132
    const-string v2, "android.support.customtabs.extra.SESSION_ID"

    const-class v3, Landroid/app/PendingIntent;

    invoke-static {p0, v2, v3}, Landroidx/core/content/IntentCompat;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/PendingIntent;

    if-nez v0, :cond_1

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    if-nez v0, :cond_2

    goto :goto_0

    .line 135
    :cond_2
    invoke-static {v0}, Landroid/support/customtabs/IAuthTabCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/IAuthTabCallback;

    move-result-object v1

    .line 137
    :goto_0
    new-instance v0, Landroidx/browser/auth/AuthTabSessionToken;

    invoke-direct {v0, v1, p0}, Landroidx/browser/auth/AuthTabSessionToken;-><init>(Landroid/support/customtabs/IAuthTabCallback;Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method private getCallbackBinderAssertNotNull()Landroid/os/IBinder;
    .locals 2

    .line 194
    iget-object v0, p0, Landroidx/browser/auth/AuthTabSessionToken;->mCallbackBinder:Landroid/support/customtabs/IAuthTabCallback;

    if-eqz v0, :cond_0

    .line 198
    invoke-interface {v0}, Landroid/support/customtabs/IAuthTabCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AuthTabSessionToken must have valid binder or pending session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 179
    instance-of v0, p1, Landroidx/browser/auth/AuthTabSessionToken;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 180
    :cond_0
    check-cast p1, Landroidx/browser/auth/AuthTabSessionToken;

    .line 182
    invoke-virtual {p1}, Landroidx/browser/auth/AuthTabSessionToken;->getId()Landroid/app/PendingIntent;

    move-result-object v0

    .line 184
    iget-object v2, p0, Landroidx/browser/auth/AuthTabSessionToken;->mSessionId:Landroid/app/PendingIntent;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-eq v4, v3, :cond_3

    return v1

    :cond_3
    if-eqz v2, :cond_4

    .line 187
    invoke-virtual {v2, v0}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 190
    :cond_4
    invoke-direct {p0}, Landroidx/browser/auth/AuthTabSessionToken;->getCallbackBinderAssertNotNull()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p1}, Landroidx/browser/auth/AuthTabSessionToken;->getCallbackBinderAssertNotNull()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCallback()Landroidx/browser/auth/AuthTabCallback;
    .locals 1

    .line 146
    iget-object v0, p0, Landroidx/browser/auth/AuthTabSessionToken;->mCallback:Landroidx/browser/auth/AuthTabCallback;

    return-object v0
.end method

.method public getCallbackBinder()Landroid/os/IBinder;
    .locals 1

    .line 155
    iget-object v0, p0, Landroidx/browser/auth/AuthTabSessionToken;->mCallbackBinder:Landroid/support/customtabs/IAuthTabCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 156
    :cond_0
    invoke-interface {v0}, Landroid/support/customtabs/IAuthTabCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getId()Landroid/app/PendingIntent;
    .locals 1

    .line 162
    iget-object v0, p0, Landroidx/browser/auth/AuthTabSessionToken;->mSessionId:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public hasId()Z
    .locals 1

    .line 167
    iget-object v0, p0, Landroidx/browser/auth/AuthTabSessionToken;->mSessionId:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 172
    iget-object v0, p0, Landroidx/browser/auth/AuthTabSessionToken;->mSessionId:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->hashCode()I

    move-result v0

    return v0

    .line 174
    :cond_0
    invoke-direct {p0}, Landroidx/browser/auth/AuthTabSessionToken;->getCallbackBinderAssertNotNull()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAssociatedWith(Landroidx/browser/auth/AuthTabSession;)Z
    .locals 1

    .line 205
    invoke-virtual {p1}, Landroidx/browser/auth/AuthTabSession;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Landroidx/browser/auth/AuthTabSessionToken;->mCallbackBinder:Landroid/support/customtabs/IAuthTabCallback;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
