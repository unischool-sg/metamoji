.class public final Landroidx/browser/auth/AuthTabIntent$Builder;
.super Ljava/lang/Object;
.source "AuthTabIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/auth/AuthTabIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mColorSchemeParamBundles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultColorSchemeBuilder:Landroidx/browser/auth/AuthTabColorSchemeParams$Builder;

.field private mDefaultColorSchemeBundle:Landroid/os/Bundle;

.field private final mIntent:Landroid/content/Intent;

.field private mPendingSession:Landroidx/browser/auth/AuthTabSession$PendingSession;

.field private mSession:Landroidx/browser/auth/AuthTabSession;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/browser/auth/AuthTabIntent$Builder;->mIntent:Landroid/content/Intent;

    .line 260
    new-instance v0, Landroidx/browser/auth/AuthTabColorSchemeParams$Builder;

    invoke-direct {v0}, Landroidx/browser/auth/AuthTabColorSchemeParams$Builder;-><init>()V

    iput-object v0, p0, Landroidx/browser/auth/AuthTabIntent$Builder;->mDefaultColorSchemeBuilder:Landroidx/browser/auth/AuthTabColorSchemeParams$Builder;

    return-void
.end method

.method private setSessionParameters(Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    .locals 2

    .line 300
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 301
    const-string v1, "android.support.customtabs.extra.SESSION"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    if-eqz p2, :cond_0

    .line 303
    const-string p1, "android.support.customtabs.extra.SESSION_ID"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 306
    :cond_0
    iget-object p1, p0, Landroidx/browser/auth/AuthTabIntent$Builder;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public build()Landroidx/browser/auth/AuthTabIntent;
    .locals 5

    .line 426
    iget-object v0, p0, Landroidx/browser/auth/AuthTabIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string v1, "androidx.browser.auth.extra.LAUNCH_AUTH_TAB"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 430
    iget-object v0, p0, Landroidx/browser/auth/AuthTabIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.support.customtabs.extra.SESSION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 431
    invoke-direct {p0, v1, v1}, Landroidx/browser/auth/AuthTabIntent$Builder;->setSessionParameters(Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    .line 434
    :cond_0
    iget-object v0, p0, Landroidx/browser/auth/AuthTabIntent$Builder;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Landroidx/browser/auth/AuthTabIntent$Builder;->mDefaultColorSchemeBuilder:Landroidx/browser/auth/AuthTabColorSchemeParams$Builder;

    invoke-virtual {v2}, Landroidx/browser/auth/AuthTabColorSchemeParams$Builder;->build()Landroidx/browser/auth/AuthTabColorSchemeParams;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/browser/auth/AuthTabColorSchemeParams;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 435
    iget-object v0, p0, Landroidx/browser/auth/AuthTabIntent$Builder;->mDefaultColorSchemeBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 436
    iget-object v2, p0, Landroidx/browser/auth/AuthTabIntent$Builder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 439
    :cond_1
    iget-object v0, p0, Landroidx/browser/auth/AuthTabIntent$Builder;->mColorSchemeParamBundles:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    .line 440
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 441
    const-string v2, "androidx.browser.customtabs.extra.COLOR_SCHEME_PARAMS"

    iget-object v3, p0, Landroidx/browser/auth/AuthTabIntent$Builder;->mColorSchemeParamBundles:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 443
    iget-object v2, p0, Landroidx/browser/auth/AuthTabIntent$Builder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 446
    :cond_2
    new-instance v0, Landroidx/browser/auth/AuthTabIntent;

    iget-object v2, p0, Landroidx/browser/auth/AuthTabIntent$Builder;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Landroidx/browser/auth/AuthTabIntent$Builder;->mSession:Landroidx/browser/auth/AuthTabSession;

    iget-object v4, p0, Landroidx/browser/auth/AuthTabIntent$Builder;->mPendingSession:Landroidx/browser/auth/AuthTabSession$PendingSession;

    invoke-direct {v0, v2, v3, v4, v1}, Landroidx/browser/auth/AuthTabIntent;-><init>(Landroid/content/Intent;Landroidx/browser/auth/AuthTabSession;Landroidx/browser/auth/AuthTabSession$PendingSession;Landroidx/browser/auth/AuthTabIntent$1;)V

    return-object v0
.end method

.method public setCloseButtonIcon(Landroid/graphics/Bitmap;)Landroidx/browser/auth/AuthTabIntent$Builder;
    .locals 2

    .line 417
    iget-object v0, p0, Landroidx/browser/auth/AuthTabIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.support.customtabs.extra.CLOSE_BUTTON_ICON"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method public setColorScheme(I)Landroidx/browser/auth/AuthTabIntent$Builder;
    .locals 2

    .line 334
    iget-object v0, p0, Landroidx/browser/auth/AuthTabIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string v1, "androidx.browser.customtabs.extra.COLOR_SCHEME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public setColorSchemeParams(ILandroidx/browser/auth/AuthTabColorSchemeParams;)Landroidx/browser/auth/AuthTabIntent$Builder;
    .locals 1

    .line 384
    iget-object v0, p0, Landroidx/browser/auth/AuthTabIntent$Builder;->mColorSchemeParamBundles:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/browser/auth/AuthTabIntent$Builder;->mColorSchemeParamBundles:Landroid/util/SparseArray;

    .line 387
    :cond_0
    iget-object v0, p0, Landroidx/browser/auth/AuthTabIntent$Builder;->mColorSchemeParamBundles:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroidx/browser/auth/AuthTabColorSchemeParams;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setDefaultColorSchemeParams(Landroidx/browser/auth/AuthTabColorSchemeParams;)Landroidx/browser/auth/AuthTabIntent$Builder;
    .locals 0

    .line 403
    invoke-virtual {p1}, Landroidx/browser/auth/AuthTabColorSchemeParams;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroidx/browser/auth/AuthTabIntent$Builder;->mDefaultColorSchemeBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public setEphemeralBrowsingEnabled(Z)Landroidx/browser/auth/AuthTabIntent$Builder;
    .locals 2

    .line 318
    iget-object v0, p0, Landroidx/browser/auth/AuthTabIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string v1, "androidx.browser.customtabs.extra.ENABLE_EPHEMERAL_BROWSING"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public setPendingSession(Landroidx/browser/auth/AuthTabSession$PendingSession;)Landroidx/browser/auth/AuthTabIntent$Builder;
    .locals 1

    .line 293
    iput-object p1, p0, Landroidx/browser/auth/AuthTabIntent$Builder;->mPendingSession:Landroidx/browser/auth/AuthTabSession$PendingSession;

    const/4 v0, 0x0

    .line 294
    invoke-virtual {p1}, Landroidx/browser/auth/AuthTabSession$PendingSession;->getId()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroidx/browser/auth/AuthTabIntent$Builder;->setSessionParameters(Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    return-object p0
.end method

.method public setSession(Landroidx/browser/auth/AuthTabSession;)Landroidx/browser/auth/AuthTabIntent$Builder;
    .locals 2

    .line 279
    iput-object p1, p0, Landroidx/browser/auth/AuthTabIntent$Builder;->mSession:Landroidx/browser/auth/AuthTabSession;

    .line 280
    iget-object v0, p0, Landroidx/browser/auth/AuthTabIntent$Builder;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroidx/browser/auth/AuthTabSession;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    invoke-virtual {p1}, Landroidx/browser/auth/AuthTabSession;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/browser/auth/AuthTabSession;->getId()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroidx/browser/auth/AuthTabIntent$Builder;->setSessionParameters(Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    return-object p0
.end method
