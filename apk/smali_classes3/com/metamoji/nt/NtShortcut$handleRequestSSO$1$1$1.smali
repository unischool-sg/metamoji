.class final Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NtShortcut.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/metamoji/lib/dialog/UtDialogOwner;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/metamoji/lib/dialog/UtDialogOwner;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.metamoji.nt.NtShortcut$handleRequestSSO$1$1$1"
    f = "NtShortcut.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $param1:Ljava/lang/String;

.field final synthetic $param2:Ljava/lang/String;

.field final synthetic $param3:Ljava/lang/String;

.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1$1;->$param1:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1$1;->$param2:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1$1;->$param3:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1$1;

    iget-object v1, p0, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1$1;->$param1:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1$1;->$param2:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1$1;->$param3:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lcom/metamoji/lib/dialog/UtDialogOwner;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/metamoji/lib/dialog/UtDialogOwner;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1$1;->invoke(Lcom/metamoji/lib/dialog/UtDialogOwner;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/dialog/UtDialogOwner;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 128
    iget v1, p0, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1$1;->label:I

    if-nez v1, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 129
    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtDialogOwner;->asActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.metamoji.li.LoginActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/metamoji/li/LoginActivity;

    .line 130
    new-instance v0, Lcom/metamoji/cs/dc/params/CsGetCredentialParam;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/params/CsGetCredentialParam;-><init>()V

    iget-object v1, p0, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1$1;->$param1:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1$1;->$param2:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1$1;->$param3:Ljava/lang/String;

    .line 131
    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsGetCredentialParam;->param1:Ljava/lang/String;

    .line 132
    iput-object v2, v0, Lcom/metamoji/cs/dc/params/CsGetCredentialParam;->param2:Ljava/lang/String;

    .line 133
    iput-object v3, v0, Lcom/metamoji/cs/dc/params/CsGetCredentialParam;->param3:Ljava/lang/String;

    .line 130
    invoke-virtual {p1, v0}, Lcom/metamoji/li/LoginActivity;->completeLoginWithExternalSSO(Lcom/metamoji/cs/dc/params/CsGetCredentialParam;)V

    .line 135
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 128
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
