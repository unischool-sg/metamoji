.class final Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4$1$1;
.super Ljava/lang/Object;
.source "NtEditorWindowControllerExt.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $continuation:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $document:Lcom/metamoji/nt/NtDocument;

.field final synthetic $mushroomDic:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtDocument;Landroid/net/Uri;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtDocument;",
            "Landroid/net/Uri;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4$1$1;->$document:Lcom/metamoji/nt/NtDocument;

    iput-object p2, p0, Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4$1$1;->$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4$1$1;->$mushroomDic:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4$1$1;->$continuation:Lkotlin/coroutines/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 25
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 26
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4$1$1;->$document:Lcom/metamoji/nt/NtDocument;

    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4$1$1;->$uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4$1$1;->$mushroomDic:Ljava/util/HashMap;

    check-cast v2, Ljava/util/Map;

    sget-object v7, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;->SHARED:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/metamoji/nt/NtDocument;->exportAsHayabusadoc(Landroid/net/Uri;Ljava/util/Map;Ljava/lang/StringBuffer;Lcom/metamoji/nt/INtProgressUI;ZZLcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Ljava/util/Map;)Z

    move-result v0

    .line 29
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4$1$1;->$continuation:Lkotlin/coroutines/Continuation;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void

    .line 29
    :cond_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
