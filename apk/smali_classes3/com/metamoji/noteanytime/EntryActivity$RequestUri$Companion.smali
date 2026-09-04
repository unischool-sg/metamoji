.class public final Lcom/metamoji/noteanytime/EntryActivity$RequestUri$Companion;
.super Ljava/lang/Object;
.source "EntryActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/noteanytime/EntryActivity$RequestUri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/metamoji/noteanytime/EntryActivity$RequestUri$Companion;",
        "",
        "<init>",
        "()V",
        "create",
        "Lcom/metamoji/cm/SharedReference;",
        "Lcom/metamoji/nt/INtRequestUri;",
        "activity",
        "Landroid/app/Activity;",
        "intent",
        "Landroid/content/Intent;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/noteanytime/EntryActivity$RequestUri$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/app/Activity;Landroid/content/Intent;)Lcom/metamoji/cm/SharedReference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Intent;",
            ")",
            "Lcom/metamoji/cm/SharedReference<",
            "Lcom/metamoji/nt/INtRequestUri;",
            ">;"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    new-instance v0, Lcom/metamoji/cm/SharedReference;

    new-instance v1, Lcom/metamoji/noteanytime/EntryActivity$RequestUri;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/metamoji/noteanytime/EntryActivity$RequestUri;-><init>(Landroid/app/Activity;Landroid/content/Intent;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Ljava/lang/AutoCloseable;

    invoke-direct {v0, v1}, Lcom/metamoji/cm/SharedReference;-><init>(Ljava/lang/AutoCloseable;)V

    return-object v0
.end method
