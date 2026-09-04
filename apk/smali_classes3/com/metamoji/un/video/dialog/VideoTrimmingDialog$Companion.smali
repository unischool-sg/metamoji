.class public final Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion;
.super Ljava/lang/Object;
.source "VideoTrimmingDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J>\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\r\u001a\u00020\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\tH\u0086@\u00a2\u0006\u0002\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion;",
        "",
        "<init>",
        "()V",
        "logger",
        "Lcom/metamoji/lib/utils/UtLog;",
        "getLogger",
        "()Lcom/metamoji/lib/utils/UtLog;",
        "executeTrimming",
        "",
        "docId",
        "",
        "unitId",
        "source",
        "Ljava/io/File;",
        "destination",
        "repair",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion;-><init>()V

    return-void
.end method

.method public static synthetic executeTrimming$default(Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x1

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    move-object v6, p6

    .line 128
    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion;->executeTrimming(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final executeTrimming(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 129
    new-instance v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;

    .line 132
    new-instance v1, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion$executeTrimming$2;

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion$executeTrimming$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;ZLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 129
    const-string p1, "VideoTrimmingDialog"

    invoke-direct {v0, p1, v1}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 132
    invoke-virtual {v0, p6}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;->fireAsync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getLogger()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 126
    invoke-static {}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    return-object v0
.end method
