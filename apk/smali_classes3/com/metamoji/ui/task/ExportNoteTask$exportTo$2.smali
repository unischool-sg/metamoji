.class final Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ExportNoteTask.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/task/ExportNoteTask;->exportTo(Landroid/net/Uri;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExportNoteTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExportNoteTask.kt\ncom/metamoji/ui/task/ExportNoteTask$exportTo$2\n+ 2 UtLib.kt\ncom/metamoji/lib/utils/UtLibKt\n*L\n1#1,217:1\n74#2,4:218\n*S KotlinDebug\n*F\n+ 1 ExportNoteTask.kt\ncom/metamoji/ui/task/ExportNoteTask$exportTo$2\n*L\n155#1:218,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "com.metamoji.ui.task.ExportNoteTask$exportTo$2"
    f = "ExportNoteTask.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $isCollabo:Z

.field final synthetic $uri:Landroid/net/Uri;

.field label:I

.field final synthetic this$0:Lcom/metamoji/ui/task/ExportNoteTask;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/task/ExportNoteTask;Landroid/net/Uri;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/task/ExportNoteTask;",
            "Landroid/net/Uri;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2;->this$0:Lcom/metamoji/ui/task/ExportNoteTask;

    iput-object p2, p0, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2;->$uri:Landroid/net/Uri;

    iput-boolean p3, p0, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2;->$isCollabo:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2;

    iget-object v0, p0, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2;->this$0:Lcom/metamoji/ui/task/ExportNoteTask;

    iget-object v1, p0, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2;->$uri:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2;->$isCollabo:Z

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2;-><init>(Lcom/metamoji/ui/task/ExportNoteTask;Landroid/net/Uri;ZLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 124
    iget v0, p0, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 125
    new-instance p1, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2$pbe$1;

    iget-object v0, p0, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2;->this$0:Lcom/metamoji/ui/task/ExportNoteTask;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2$pbe$1;-><init>(Lcom/metamoji/ui/task/ExportNoteTask;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x1

    invoke-static {v1, p1, v0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Lcom/metamoji/cm/PBE;

    .line 146
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v2, p1

    check-cast v2, Ljava/util/Map;

    .line 147
    iget-object p1, p0, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2;->this$0:Lcom/metamoji/ui/task/ExportNoteTask;

    invoke-virtual {p1}, Lcom/metamoji/ui/task/ExportNoteTask;->getEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-static {p1, v0, v1, v0, v1}, Lcom/metamoji/nt/NtDocument;->attachmentTicketsForExportingAsHayabusadoc(Lcom/metamoji/df/model/IModel;ZLjava/lang/String;ZLjava/util/Map;)Ljava/util/HashSet;

    move-result-object p1

    .line 148
    const-string v0, "attachmentTickets"

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string p1, "included-recordings"

    sget-object v0, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;->INCLUDED:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 155
    iget-object p1, p0, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2;->this$0:Lcom/metamoji/ui/task/ExportNoteTask;

    invoke-virtual {p1}, Lcom/metamoji/ui/task/ExportNoteTask;->getEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v3

    iget-object v5, p0, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2;->$uri:Landroid/net/Uri;

    iget-boolean v10, p0, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2;->$isCollabo:Z

    const/4 v11, 0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v11}, Lcom/metamoji/nt/NtDocument;->exportAsHayabusadoc(Ljava/util/Map;Lcom/metamoji/df/model/IModelManager;ZLandroid/net/Uri;Ljava/util/Map;Ljava/lang/StringBuffer;Lcom/metamoji/cm/PBE;Lcom/metamoji/nt/INtProgressUI;ZZ)Z

    move-result p1

    iget-object v0, p0, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2;->this$0:Lcom/metamoji/ui/task/ExportNoteTask;

    if-nez p1, :cond_1

    .line 156
    sget-object p1, Lcom/metamoji/ui/task/ExportNoteTask$SaveStatus;->ERROR:Lcom/metamoji/ui/task/ExportNoteTask$SaveStatus;

    invoke-static {v0, p1}, Lcom/metamoji/ui/task/ExportNoteTask;->access$setSaveStatus$p(Lcom/metamoji/ui/task/ExportNoteTask;Lcom/metamoji/ui/task/ExportNoteTask$SaveStatus;)V

    .line 157
    move-object p1, v7

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 158
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/ui/task/ExportNoteTask;->access$setErrorMessage$p(Lcom/metamoji/ui/task/ExportNoteTask;Ljava/lang/String;)V

    .line 160
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot export the note"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 221
    :cond_1
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 124
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
