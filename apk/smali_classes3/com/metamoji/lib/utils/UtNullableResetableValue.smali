.class public final Lcom/metamoji/lib/utils/UtNullableResetableValue;
.super Ljava/lang/Object;
.source "UtResetableValue.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B%\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0012\u0008\u0002\u0010\u0005\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001d\u0010\u0010\u001a\u0004\u0018\u00018\u00002\u000e\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0006\u00a2\u0006\u0002\u0010\u0012J0\u0010\u0013\u001a\u0004\u0018\u00018\u00002\u001e\u0010\u0011\u001a\u001a\u0008\u0001\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0014H\u0086@\u00a2\u0006\u0002\u0010\u0016J\u001c\u0010\u0017\u001a\u00020\u00182\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0005\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010\t\u001a\u0004\u0018\u00018\u00002\u0008\u0010\t\u001a\u0004\u0018\u00018\u00008F@BX\u0086\u000e\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000bR\u001e\u0010\r\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/UtNullableResetableValue;",
        "T",
        "",
        "allowKeepNull",
        "",
        "lazy",
        "Lkotlin/Function0;",
        "<init>",
        "(ZLkotlin/jvm/functions/Function0;)V",
        "value",
        "getValue",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "hasValue",
        "getHasValue",
        "()Z",
        "setIfNeed",
        "fn",
        "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "setIfNeedAsync",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "reset",
        "",
        "preReset",
        "utils"
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
.field private final allowKeepNull:Z

.field private hasValue:Z

.field private final lazy:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "TT;>;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v0}, Lcom/metamoji/lib/utils/UtNullableResetableValue;-><init>(ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)V"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/metamoji/lib/utils/UtNullableResetableValue;->allowKeepNull:Z

    iput-object p2, p0, Lcom/metamoji/lib/utils/UtNullableResetableValue;->lazy:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 113
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/metamoji/lib/utils/UtNullableResetableValue;-><init>(ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final getHasValue()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/metamoji/lib/utils/UtNullableResetableValue;->hasValue:Z

    return v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 116
    iget-boolean v0, p0, Lcom/metamoji/lib/utils/UtNullableResetableValue;->hasValue:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/lib/utils/UtNullableResetableValue;->lazy:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_1

    .line 117
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/utils/UtNullableResetableValue;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 118
    iget-boolean v0, p0, Lcom/metamoji/lib/utils/UtNullableResetableValue;->allowKeepNull:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcom/metamoji/lib/utils/UtNullableResetableValue;->hasValue:Z

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtNullableResetableValue;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final reset(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/UtNullableResetableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/UtNullableResetableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x0

    .line 153
    iput-boolean p1, p0, Lcom/metamoji/lib/utils/UtNullableResetableValue;->hasValue:Z

    const/4 p1, 0x0

    .line 154
    iput-object p1, p0, Lcom/metamoji/lib/utils/UtNullableResetableValue;->value:Ljava/lang/Object;

    return-void
.end method

.method public final setIfNeed(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-boolean v0, p0, Lcom/metamoji/lib/utils/UtNullableResetableValue;->hasValue:Z

    if-nez v0, :cond_1

    .line 131
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/lib/utils/UtNullableResetableValue;->value:Ljava/lang/Object;

    .line 132
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/UtNullableResetableValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/metamoji/lib/utils/UtNullableResetableValue;->allowKeepNull:Z

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 133
    iput-boolean p1, p0, Lcom/metamoji/lib/utils/UtNullableResetableValue;->hasValue:Z

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/UtNullableResetableValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final setIfNeedAsync(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/metamoji/lib/utils/UtNullableResetableValue$setIfNeedAsync$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/metamoji/lib/utils/UtNullableResetableValue$setIfNeedAsync$1;

    iget v1, v0, Lcom/metamoji/lib/utils/UtNullableResetableValue$setIfNeedAsync$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/metamoji/lib/utils/UtNullableResetableValue$setIfNeedAsync$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/metamoji/lib/utils/UtNullableResetableValue$setIfNeedAsync$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/lib/utils/UtNullableResetableValue$setIfNeedAsync$1;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/lib/utils/UtNullableResetableValue$setIfNeedAsync$1;-><init>(Lcom/metamoji/lib/utils/UtNullableResetableValue;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/metamoji/lib/utils/UtNullableResetableValue$setIfNeedAsync$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 139
    iget v2, v0, Lcom/metamoji/lib/utils/UtNullableResetableValue$setIfNeedAsync$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/metamoji/lib/utils/UtNullableResetableValue$setIfNeedAsync$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/lib/utils/UtNullableResetableValue;

    iget-object v0, v0, Lcom/metamoji/lib/utils/UtNullableResetableValue$setIfNeedAsync$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 140
    iget-boolean p2, p0, Lcom/metamoji/lib/utils/UtNullableResetableValue;->hasValue:Z

    if-nez p2, :cond_5

    .line 141
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lcom/metamoji/lib/utils/UtNullableResetableValue$setIfNeedAsync$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/metamoji/lib/utils/UtNullableResetableValue$setIfNeedAsync$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/lib/utils/UtNullableResetableValue$setIfNeedAsync$1;->label:I

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 139
    :goto_1
    iput-object p2, p1, Lcom/metamoji/lib/utils/UtNullableResetableValue;->value:Ljava/lang/Object;

    .line 142
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/UtNullableResetableValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/metamoji/lib/utils/UtNullableResetableValue;->allowKeepNull:Z

    if-eqz p1, :cond_5

    .line 143
    :cond_4
    iput-boolean v3, p0, Lcom/metamoji/lib/utils/UtNullableResetableValue;->hasValue:Z

    .line 146
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/UtNullableResetableValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
