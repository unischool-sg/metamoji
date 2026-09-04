.class public final Lcom/metamoji/nt/NtEditorWindowControllerExt;
.super Ljava/lang/Object;
.source "NtEditorWindowControllerExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J4\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\"\u0010\u0008\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\tj\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n`\u000bH\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/metamoji/nt/NtEditorWindowControllerExt;",
        "",
        "<init>",
        "()V",
        "exportPoisonousMushroom",
        "",
        "document",
        "Lcom/metamoji/nt/NtDocument;",
        "mushroomDic",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
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
.field public static final INSTANCE:Lcom/metamoji/nt/NtEditorWindowControllerExt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/nt/NtEditorWindowControllerExt;

    invoke-direct {v0}, Lcom/metamoji/nt/NtEditorWindowControllerExt;-><init>()V

    sput-object v0, Lcom/metamoji/nt/NtEditorWindowControllerExt;->INSTANCE:Lcom/metamoji/nt/NtEditorWindowControllerExt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final exportPoisonousMushroom(Lcom/metamoji/nt/NtDocument;Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtDocument;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "document"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mushroomDic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getDocumentTitleForFileName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".atdoc"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "format(...)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;-><init>(Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Lcom/metamoji/nt/NtEditorWindowControllerExt$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/metamoji/nt/NtEditorWindowControllerExt$$ExternalSyntheticLambda0;-><init>()V

    .line 19
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;->messageTitle(Lkotlin/jvm/functions/Function0;)Lcom/metamoji/ui/task/DynamicStreamSource$Builder;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtEditorWindowControllerExt$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/metamoji/nt/NtEditorWindowControllerExt$$ExternalSyntheticLambda1;-><init>()V

    .line 20
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;->positiveMessage(Lkotlin/jvm/functions/Function0;)Lcom/metamoji/ui/task/DynamicStreamSource$Builder;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtEditorWindowControllerExt$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/metamoji/nt/NtEditorWindowControllerExt$$ExternalSyntheticLambda2;-><init>()V

    .line 21
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;->negativeMessage(Lkotlin/jvm/functions/Function0;)Lcom/metamoji/ui/task/DynamicStreamSource$Builder;

    move-result-object v0

    .line 22
    new-instance v1, Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4;

    invoke-direct {v1, p0, p1, v2}, Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4;-><init>(Lcom/metamoji/nt/NtDocument;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;->saveTo(Lkotlin/jvm/functions/Function2;)Lcom/metamoji/ui/task/DynamicStreamSource$Builder;

    move-result-object p0

    .line 34
    invoke-virtual {p0}, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;->build()Lcom/metamoji/ui/task/DynamicStreamSource;

    move-result-object p0

    .line 35
    sget-object v2, Lcom/metamoji/ui/task/SaveTypedFileTask;->Companion:Lcom/metamoji/ui/task/SaveTypedFileTask$Companion;

    .line 36
    move-object v3, p0

    check-cast v3, Lcom/metamoji/ui/task/ISaveFileSource;

    .line 38
    const-string v6, ".atdoc"

    const/4 v7, 0x1

    .line 35
    const-string v5, "application/vnd.metamoji.atdoc"

    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/ui/task/SaveTypedFileTask$Companion;->saveFile(Lcom/metamoji/ui/task/ISaveFileSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static final exportPoisonousMushroom$lambda$0()Ljava/lang/String;
    .locals 1

    .line 19
    sget v0, Lcom/metamoji/noteanytime/R$string;->app_name:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static final exportPoisonousMushroom$lambda$1()Ljava/lang/String;
    .locals 1

    .line 20
    const-string/jumbo v0, "\u30ce\u30fc\u30c8\u306e\u30c7\u30d0\u30c3\u30af\u66f8\u304d\u51fa\u3057\u306b\u6210\u529f\u3057\u307e\u3057\u305f\u3002"

    return-object v0
.end method

.method static final exportPoisonousMushroom$lambda$2()Ljava/lang/String;
    .locals 1

    .line 21
    const-string/jumbo v0, "\u30ce\u30fc\u30c8\u306e\u30c7\u30d0\u30c3\u30af\u66f8\u304d\u51fa\u3057\u306b\u5931\u6557\u3057\u307e\u3057\u305f\u3002"

    return-object v0
.end method
