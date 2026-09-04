.class public final Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;
.super Ljava/lang/Object;
.source "UiPermissionBroker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/UiMultiPermissionsBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUiPermissionBroker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UiPermissionBroker.kt\ncom/metamoji/ui/UiMultiPermissionsBroker$Request\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,86:1\n37#2,2:87\n*S KotlinDebug\n*F\n+ 1 UiPermissionBroker.kt\ncom/metamoji/ui/UiMultiPermissionsBroker$Request\n*L\n74#1:87,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001c\u0010\u0010\u001a\u00060\u0000R\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000bJ$\u0010\u0014\u001a\u00060\u0000R\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000bJ$\u0010\u0010\u001a\u00060\u0000R\u00020\u00112\u000e\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00172\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000bJ\u000e\u0010\u0018\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010\u0019R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R&\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000b0\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;",
        "",
        "<init>",
        "(Lcom/metamoji/ui/UiMultiPermissionsBroker;)V",
        "list",
        "",
        "",
        "getList",
        "()Ljava/util/List;",
        "requiredFlags",
        "",
        "",
        "getRequiredFlags",
        "()Ljava/util/Map;",
        "setRequiredFlags",
        "(Ljava/util/Map;)V",
        "add",
        "Lcom/metamoji/ui/UiMultiPermissionsBroker;",
        "permission",
        "required",
        "addIf",
        "condition",
        "permissionFn",
        "Lkotlin/Function0;",
        "execute",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requiredFlags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/metamoji/ui/UiMultiPermissionsBroker;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/UiMultiPermissionsBroker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;->this$0:Lcom/metamoji/ui/UiMultiPermissionsBroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;->list:Ljava/util/List;

    .line 51
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;->requiredFlags:Ljava/util/Map;

    return-void
.end method

.method public static synthetic add$default(Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;Ljava/lang/String;ZILjava/lang/Object;)Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 52
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;->add(Ljava/lang/String;Z)Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic add$default(Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;Lkotlin/jvm/functions/Function0;ZILjava/lang/Object;)Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 65
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;->add(Lkotlin/jvm/functions/Function0;Z)Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic addIf$default(Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;ZLjava/lang/String;ZILjava/lang/Object;)Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 59
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;->addIf(ZLjava/lang/String;Z)Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final add(Ljava/lang/String;Z)Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;
    .locals 1

    const-string v0, "permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;->requiredFlags:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public final add(Lkotlin/jvm/functions/Function0;Z)Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;"
        }
    .end annotation

    const-string v0, "permissionFn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    return-object p0

    .line 67
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;->add(Ljava/lang/String;Z)Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;

    return-object p0
.end method

.method public final addIf(ZLjava/lang/String;Z)Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;
    .locals 1

    const-string v0, "permission"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p0, p2, p3}, Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;->add(Ljava/lang/String;Z)Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;

    :cond_0
    return-object p0
.end method

.method public final execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/metamoji/ui/UiMultiPermissionsBroker$Request$execute$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/ui/UiMultiPermissionsBroker$Request$execute$1;

    iget v1, v0, Lcom/metamoji/ui/UiMultiPermissionsBroker$Request$execute$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/metamoji/ui/UiMultiPermissionsBroker$Request$execute$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/metamoji/ui/UiMultiPermissionsBroker$Request$execute$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/ui/UiMultiPermissionsBroker$Request$execute$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/UiMultiPermissionsBroker$Request$execute$1;-><init>(Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/metamoji/ui/UiMultiPermissionsBroker$Request$execute$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 70
    iget v2, v0, Lcom/metamoji/ui/UiMultiPermissionsBroker$Request$execute$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 71
    iget-object p1, p0, Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 72
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 74
    :cond_3
    iget-object p1, p0, Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;->this$0:Lcom/metamoji/ui/UiMultiPermissionsBroker;

    iget-object v2, p0, Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;->list:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    .line 88
    new-array v5, v3, [Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 74
    iput v4, v0, Lcom/metamoji/ui/UiMultiPermissionsBroker$Request$execute$1;->label:I

    invoke-virtual {p1, v2, v0}, Lcom/metamoji/ui/UiMultiPermissionsBroker;->invoke(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 70
    :cond_4
    :goto_1
    check-cast p1, Ljava/util/Map;

    .line 75
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 76
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 77
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;->requiredFlags:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 79
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 83
    :cond_6
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;->list:Ljava/util/List;

    return-object v0
.end method

.method public final getRequiredFlags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;->requiredFlags:Ljava/util/Map;

    return-object v0
.end method

.method public final setRequiredFlags(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;->requiredFlags:Ljava/util/Map;

    return-void
.end method
