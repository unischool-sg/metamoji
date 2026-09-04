.class final Lcom/metamoji/noteanytime/EntryActivity$RequestUri;
.super Ljava/lang/Object;
.source "EntryActivity.kt"

# interfaces
.implements Lcom/metamoji/nt/INtRequestUri;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/noteanytime/EntryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RequestUri"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/noteanytime/EntryActivity$RequestUri$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0002\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u0010\u001a\u00020\tH\u0016J\u0008\u0010\u0011\u001a\u00020\u000bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u00020\rX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/metamoji/noteanytime/EntryActivity$RequestUri;",
        "Lcom/metamoji/nt/INtRequestUri;",
        "_activity",
        "Landroid/app/Activity;",
        "_intent",
        "Landroid/content/Intent;",
        "<init>",
        "(Landroid/app/Activity;Landroid/content/Intent;)V",
        "_finished",
        "",
        "close",
        "",
        "uri",
        "Landroid/net/Uri;",
        "getUri",
        "()Landroid/net/Uri;",
        "finishActivity",
        "callStartupActivity",
        "Companion",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/metamoji/noteanytime/EntryActivity$RequestUri$Companion;


# instance fields
.field private final _activity:Landroid/app/Activity;

.field private _finished:Z

.field private final _intent:Landroid/content/Intent;

.field private final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/noteanytime/EntryActivity$RequestUri$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/noteanytime/EntryActivity$RequestUri$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/noteanytime/EntryActivity$RequestUri;->Companion:Lcom/metamoji/noteanytime/EntryActivity$RequestUri$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p1, p0, Lcom/metamoji/noteanytime/EntryActivity$RequestUri;->_activity:Landroid/app/Activity;

    .line 222
    iput-object p2, p0, Lcom/metamoji/noteanytime/EntryActivity$RequestUri;->_intent:Landroid/content/Intent;

    .line 233
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/metamoji/noteanytime/EntryActivity$RequestUri;->uri:Landroid/net/Uri;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Activity;Landroid/content/Intent;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/noteanytime/EntryActivity$RequestUri;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public callStartupActivity()V
    .locals 4

    .line 245
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 246
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/metamoji/noteanytime/StartupActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x14000000

    .line 247
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 248
    iget-object v2, p0, Lcom/metamoji/noteanytime/EntryActivity$RequestUri;->_intent:Landroid/content/Intent;

    check-cast v2, Landroid/os/Parcelable;

    const-string v3, "EntryActivity:pendingIntent"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 249
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public close()V
    .locals 1

    .line 227
    iget-boolean v0, p0, Lcom/metamoji/noteanytime/EntryActivity$RequestUri;->_finished:Z

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/metamoji/noteanytime/EntryActivity$RequestUri;->_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    .line 229
    iput-boolean v0, p0, Lcom/metamoji/noteanytime/EntryActivity$RequestUri;->_finished:Z

    :cond_0
    return-void
.end method

.method public finishActivity()Z
    .locals 1

    .line 236
    iget-boolean v0, p0, Lcom/metamoji/noteanytime/EntryActivity$RequestUri;->_finished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/noteanytime/EntryActivity$RequestUri;->_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/metamoji/noteanytime/EntryActivity$RequestUri;->_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    .line 238
    iput-boolean v0, p0, Lcom/metamoji/noteanytime/EntryActivity$RequestUri;->_finished:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/metamoji/noteanytime/EntryActivity$RequestUri;->uri:Landroid/net/Uri;

    return-object v0
.end method
