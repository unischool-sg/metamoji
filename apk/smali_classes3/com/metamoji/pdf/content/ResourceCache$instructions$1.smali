.class final Lcom/metamoji/pdf/content/ResourceCache$instructions$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "ResourceCache.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/pdf/content/ResourceCache;->getInstructions()Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/sequences/SequenceScope<",
        "-",
        "Lcom/metamoji/pdf/content/Instruction;",
        ">;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlin/sequences/SequenceScope;",
        "Lcom/metamoji/pdf/content/Instruction;"
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
    c = "com.metamoji.pdf.content.ResourceCache$instructions$1"
    f = "ResourceCache.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x1d,
        0x35
    }
    m = "invokeSuspend"
    n = {
        "$this$sequence",
        "it",
        "parser",
        "stack",
        "current",
        "inst",
        "flags",
        "$i$a$-use-ResourceCache$instructions$1$1",
        "$this$sequence",
        "it",
        "parser",
        "stack",
        "current",
        "inst",
        "flags",
        "$i$a$-use-ResourceCache$instructions$1$1"
    }
    s = {
        "L$0",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$8",
        "L$9",
        "I$0",
        "L$0",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$8",
        "L$9",
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field L$9:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/metamoji/pdf/content/ResourceCache;


# direct methods
.method constructor <init>(Lcom/metamoji/pdf/content/ResourceCache;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/pdf/content/ResourceCache;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/pdf/content/ResourceCache$instructions$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->this$0:Lcom/metamoji/pdf/content/ResourceCache;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;

    iget-object v1, p0, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->this$0:Lcom/metamoji/pdf/content/ResourceCache;

    invoke-direct {v0, v1, p2}, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;-><init>(Lcom/metamoji/pdf/content/ResourceCache;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/sequences/SequenceScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/SequenceScope<",
            "-",
            "Lcom/metamoji/pdf/content/Instruction;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    const-string v0, "Font"

    iget-object v2, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlin/sequences/SequenceScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 17
    iget v4, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->label:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    if-eq v4, v6, :cond_1

    if-ne v4, v5, :cond_0

    iget v4, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->I$0:I

    iget-object v9, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$9:Ljava/lang/Object;

    check-cast v9, Ljava/util/EnumSet;

    iget-object v9, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$8:Ljava/lang/Object;

    check-cast v9, Lcom/metamoji/pdf/content/Instruction;

    iget-object v9, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$7:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v10, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$6:Ljava/lang/Object;

    check-cast v10, Lcom/metamoji/pdf/core/PDFObj;

    iget-object v11, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$5:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    iget-object v12, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$4:Ljava/lang/Object;

    check-cast v12, Lcom/metamoji/pdf/content/ContentParser;

    iget-object v13, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$3:Ljava/lang/Object;

    check-cast v13, Lcom/metamoji/pdf/content/ContentStream;

    iget-object v14, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$2:Ljava/lang/Object;

    check-cast v14, Lcom/metamoji/pdf/content/ResourceCache;

    iget-object v15, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$1:Ljava/lang/Object;

    check-cast v15, Ljava/io/Closeable;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v17, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v6, v5

    goto/16 :goto_8

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v4, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->I$0:I

    iget-object v9, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$9:Ljava/lang/Object;

    check-cast v9, Ljava/util/EnumSet;

    iget-object v9, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$8:Ljava/lang/Object;

    check-cast v9, Lcom/metamoji/pdf/content/Instruction;

    iget-object v9, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$7:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v10, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$6:Ljava/lang/Object;

    check-cast v10, Lcom/metamoji/pdf/core/PDFObj;

    iget-object v11, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$5:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    iget-object v12, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$4:Ljava/lang/Object;

    check-cast v12, Lcom/metamoji/pdf/content/ContentParser;

    iget-object v13, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$3:Ljava/lang/Object;

    check-cast v13, Lcom/metamoji/pdf/content/ContentStream;

    iget-object v14, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$2:Ljava/lang/Object;

    check-cast v14, Lcom/metamoji/pdf/content/ResourceCache;

    iget-object v15, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$1:Ljava/lang/Object;

    check-cast v15, Ljava/io/Closeable;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 18
    new-instance v4, Lcom/metamoji/pdf/content/ContentStream;

    iget-object v9, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->this$0:Lcom/metamoji/pdf/content/ResourceCache;

    invoke-static {v9}, Lcom/metamoji/pdf/content/ResourceCache;->access$get_contents$p(Lcom/metamoji/pdf/content/ResourceCache;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/metamoji/pdf/content/ContentStream;-><init>(Lcom/metamoji/pdf/core/PDFObj;)V

    move-object v15, v4

    check-cast v15, Ljava/io/Closeable;

    iget-object v4, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->this$0:Lcom/metamoji/pdf/content/ResourceCache;

    :try_start_2
    move-object v9, v15

    check-cast v9, Lcom/metamoji/pdf/content/ContentStream;

    .line 19
    new-instance v10, Lcom/metamoji/pdf/content/ContentParser;

    move-object v11, v9

    check-cast v11, Lcom/metamoji/pdf/core/PDFInputStream;

    invoke-static {v4}, Lcom/metamoji/pdf/content/ResourceCache;->access$get_doc$p(Lcom/metamoji/pdf/content/ResourceCache;)Lcom/metamoji/pdf/core/IPDFDocument;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/metamoji/pdf/content/ContentParser;-><init>(Lcom/metamoji/pdf/core/PDFInputStream;Lcom/metamoji/pdf/core/IPDFDocument;)V

    .line 21
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    check-cast v11, Ljava/util/List;

    .line 23
    invoke-virtual {v10}, Lcom/metamoji/pdf/content/ContentParser;->getIterator()Lkotlin/sequences/Sequence;

    move-result-object v12

    invoke-interface {v12}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v14, v4

    move-object v13, v9

    move-object v9, v12

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v12, v10

    const/4 v10, 0x0

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Lcom/metamoji/pdf/content/Instruction;

    .line 24
    invoke-virtual {v5}, Lcom/metamoji/pdf/content/Instruction;->getFlags()Ljava/util/EnumSet;

    move-result-object v7

    .line 25
    sget-object v6, Lcom/metamoji/pdf/content/Instruction$Flag;->FONT:Lcom/metamoji/pdf/content/Instruction$Flag;

    invoke-virtual {v7, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 26
    sget-object v6, Lcom/metamoji/pdf/content/Instruction$Flag;->TEXT:Lcom/metamoji/pdf/content/Instruction$Flag;

    invoke-virtual {v7, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 27
    invoke-virtual {v5, v10}, Lcom/metamoji/pdf/content/Instruction;->setFont(Lcom/metamoji/pdf/core/PDFObj;)V

    .line 29
    :cond_3
    iput-object v2, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$0:Ljava/lang/Object;

    iput-object v15, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$1:Ljava/lang/Object;

    iput-object v14, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$2:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$3:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$4:Ljava/lang/Object;

    iput-object v11, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$5:Ljava/lang/Object;

    iput-object v10, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$6:Ljava/lang/Object;

    iput-object v9, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$7:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$8:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$9:Ljava/lang/Object;

    iput v4, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->I$0:I

    const/4 v6, 0x1

    iput v6, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->label:I

    invoke-virtual {v2, v5, v1}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_4

    goto/16 :goto_7

    :cond_4
    :goto_1
    const/4 v5, 0x2

    const/4 v6, 0x1

    goto :goto_0

    .line 33
    :cond_5
    invoke-virtual {v5}, Lcom/metamoji/pdf/content/Instruction;->getOp()Ljava/lang/String;

    move-result-object v6

    move-object/from16 p1, v7

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    move-object/from16 v18, v12

    const/16 v12, 0x51

    if-eq v7, v12, :cond_10

    const/16 v12, 0x71

    if-eq v7, v12, :cond_e

    const/16 v12, 0xa92

    if-eq v7, v12, :cond_a

    const/16 v12, 0xcec

    if-eq v7, v12, :cond_6

    :goto_2
    goto :goto_3

    :cond_6
    const-string v7, "gs"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_2

    .line 41
    :cond_7
    invoke-virtual {v5}, Lcom/metamoji/pdf/content/Instruction;->getArgs()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/pdf/core/PDFObj;

    invoke-virtual {v6}, Lcom/metamoji/pdf/core/PDFObj;->name()Ljava/lang/String;

    move-result-object v6

    .line 42
    invoke-static {v14}, Lcom/metamoji/pdf/content/ResourceCache;->access$get_xgs$p(Lcom/metamoji/pdf/content/ResourceCache;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/metamoji/pdf/core/PDFObj;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 43
    invoke-static {v14}, Lcom/metamoji/pdf/content/ResourceCache;->access$get_xgs$p(Lcom/metamoji/pdf/content/ResourceCache;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/metamoji/pdf/core/PDFObj;->get(I)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v6

    .line 44
    invoke-virtual {v6}, Lcom/metamoji/pdf/core/PDFObj;->isNull()Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v6, 0x0

    :cond_8
    move-object v10, v6

    :cond_9
    :goto_3
    const/4 v7, 0x0

    goto :goto_4

    .line 33
    :cond_a
    const-string v7, "Tf"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_2

    .line 48
    :cond_b
    invoke-virtual {v5}, Lcom/metamoji/pdf/content/Instruction;->getArgs()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/pdf/core/PDFObj;

    invoke-virtual {v6}, Lcom/metamoji/pdf/core/PDFObj;->name()Ljava/lang/String;

    move-result-object v6

    .line 49
    invoke-static {v14}, Lcom/metamoji/pdf/content/ResourceCache;->access$get_font$p(Lcom/metamoji/pdf/content/ResourceCache;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v6

    .line 50
    invoke-virtual {v6}, Lcom/metamoji/pdf/core/PDFObj;->isNull()Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v6, 0x0

    :cond_c
    move-object v10, v6

    :cond_d
    :goto_4
    const/16 v17, 0x1

    goto :goto_6

    :cond_e
    const/4 v7, 0x0

    .line 33
    const-string v12, "q"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    goto :goto_5

    .line 34
    :cond_f
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_10
    const/4 v7, 0x0

    .line 33
    const-string v12, "Q"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    :goto_5
    goto :goto_4

    .line 36
    :cond_11
    move-object v6, v11

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d

    .line 37
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v6

    const/16 v17, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v11, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/pdf/core/PDFObj;

    move-object v10, v6

    .line 53
    :goto_6
    iput-object v2, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$0:Ljava/lang/Object;

    iput-object v15, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$1:Ljava/lang/Object;

    iput-object v14, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$2:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$3:Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$4:Ljava/lang/Object;

    iput-object v11, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$5:Ljava/lang/Object;

    iput-object v10, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$6:Ljava/lang/Object;

    iput-object v9, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$7:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$8:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->L$9:Ljava/lang/Object;

    iput v4, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->I$0:I

    const/4 v6, 0x2

    iput v6, v1, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;->label:I

    invoke-virtual {v2, v5, v1}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_12

    :goto_7
    return-object v3

    :cond_12
    move-object/from16 v12, v18

    :goto_8
    move v5, v6

    move/from16 v6, v17

    goto/16 :goto_0

    .line 55
    :cond_13
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    invoke-static {v15, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 56
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 18
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v15, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
