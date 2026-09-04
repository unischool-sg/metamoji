.class public final Lcom/metamoji/media/video/network/VfCloud$IDMapper;
.super Ljava/lang/Object;
.source "VfCloud.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/network/VfCloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IDMapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;,
        Lcom/metamoji/media/video/network/VfCloud$IDMapper$ServerIdResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u000e\u000fB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0086@\u00a2\u0006\u0002\u0010\u0007J\u001e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0086@\u00a2\u0006\u0002\u0010\u000bJ\u0016\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0005H\u0086@\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/metamoji/media/video/network/VfCloud$IDMapper;",
        "",
        "<init>",
        "()V",
        "getRegisteredTicketForServerId",
        "",
        "serverId",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "registerTicketWithServerId",
        "",
        "ticket",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getServerId",
        "Lcom/metamoji/media/video/network/VfCloud$IDMapper$ServerIdResult;",
        "ErrorCode",
        "ServerIdResult",
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
.field public static final INSTANCE:Lcom/metamoji/media/video/network/VfCloud$IDMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/media/video/network/VfCloud$IDMapper;

    invoke-direct {v0}, Lcom/metamoji/media/video/network/VfCloud$IDMapper;-><init>()V

    sput-object v0, Lcom/metamoji/media/video/network/VfCloud$IDMapper;->INSTANCE:Lcom/metamoji/media/video/network/VfCloud$IDMapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRegisteredTicketForServerId(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/metamoji/media/video/network/VfCloud$IDMapper$getRegisteredTicketForServerId$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/metamoji/media/video/network/VfCloud$IDMapper$getRegisteredTicketForServerId$1;

    iget v1, v0, Lcom/metamoji/media/video/network/VfCloud$IDMapper$getRegisteredTicketForServerId$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/metamoji/media/video/network/VfCloud$IDMapper$getRegisteredTicketForServerId$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/metamoji/media/video/network/VfCloud$IDMapper$getRegisteredTicketForServerId$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/media/video/network/VfCloud$IDMapper$getRegisteredTicketForServerId$1;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/media/video/network/VfCloud$IDMapper$getRegisteredTicketForServerId$1;-><init>(Lcom/metamoji/media/video/network/VfCloud$IDMapper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/metamoji/media/video/network/VfCloud$IDMapper$getRegisteredTicketForServerId$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 410
    iget v2, v0, Lcom/metamoji/media/video/network/VfCloud$IDMapper$getRegisteredTicketForServerId$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/metamoji/media/video/network/VfCloud$IDMapper$getRegisteredTicketForServerId$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 411
    sget-object p2, Lcom/metamoji/media/video/network/VfIdMappingService;->INSTANCE:Lcom/metamoji/media/video/network/VfIdMappingService;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/metamoji/media/video/network/VfCloud$IDMapper$getRegisteredTicketForServerId$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/media/video/network/VfCloud$IDMapper$getRegisteredTicketForServerId$1;->label:I

    invoke-virtual {p2, p1, v0}, Lcom/metamoji/media/video/network/VfIdMappingService;->getTicketListByServerId(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 410
    :cond_3
    :goto_1
    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_4

    .line 412
    move-object p1, p2

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getServerId(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/media/video/network/VfCloud$IDMapper$ServerIdResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 419
    sget-object v0, Lcom/metamoji/media/video/network/VfIdMappingService;->INSTANCE:Lcom/metamoji/media/video/network/VfIdMappingService;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/media/video/network/VfIdMappingService;->getServerId(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final registerTicketWithServerId(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 416
    sget-object v0, Lcom/metamoji/media/video/network/VfIdMappingService;->INSTANCE:Lcom/metamoji/media/video/network/VfIdMappingService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/metamoji/media/video/network/VfIdMappingService;->put(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
