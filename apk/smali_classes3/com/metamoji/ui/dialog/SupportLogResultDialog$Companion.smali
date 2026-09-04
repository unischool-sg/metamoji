.class public final Lcom/metamoji/ui/dialog/SupportLogResultDialog$Companion;
.super Ljava/lang/Object;
.source "SupportLogResultDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/SupportLogResultDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J(\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0005H\u0086@\u00a2\u0006\u0002\u0010\u000cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/metamoji/ui/dialog/SupportLogResultDialog$Companion;",
        "",
        "<init>",
        "()V",
        "DEFAULT_TASK_NAME",
        "",
        "show",
        "",
        "id",
        "date",
        "Ljava/time/ZonedDateTime;",
        "tag",
        "(Ljava/lang/String;Ljava/time/ZonedDateTime;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SupportLogResultDialog$Companion;-><init>()V

    return-void
.end method

.method public static synthetic show$default(Lcom/metamoji/ui/dialog/SupportLogResultDialog$Companion;Ljava/lang/String;Ljava/time/ZonedDateTime;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 82
    const-string p3, "SupportLogResultDialog"

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/metamoji/ui/dialog/SupportLogResultDialog$Companion;->show(Ljava/lang/String;Ljava/time/ZonedDateTime;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final show(Ljava/lang/String;Ljava/time/ZonedDateTime;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/time/ZonedDateTime;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 83
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;

    new-instance v1, Lcom/metamoji/ui/dialog/SupportLogResultDialog$Companion$show$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/metamoji/ui/dialog/SupportLogResultDialog$Companion$show$2;-><init>(Ljava/lang/String;Ljava/time/ZonedDateTime;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, p3, v1, p4}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;->executeAsync(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
