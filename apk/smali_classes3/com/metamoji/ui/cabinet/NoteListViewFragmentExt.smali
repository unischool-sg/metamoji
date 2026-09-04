.class public final Lcom/metamoji/ui/cabinet/NoteListViewFragmentExt;
.super Ljava/lang/Object;
.source "NoteListViewFragmentExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\"\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/NoteListViewFragmentExt;",
        "",
        "<init>",
        "()V",
        "dumpNoteForDebug",
        "",
        "driveId",
        "",
        "docId",
        "docTitle",
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
.field public static final INSTANCE:Lcom/metamoji/ui/cabinet/NoteListViewFragmentExt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/ui/cabinet/NoteListViewFragmentExt;

    invoke-direct {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragmentExt;-><init>()V

    sput-object v0, Lcom/metamoji/ui/cabinet/NoteListViewFragmentExt;->INSTANCE:Lcom/metamoji/ui/cabinet/NoteListViewFragmentExt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpNoteForDebug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "docId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "docTitle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {p2}, Lcom/metamoji/nt/NtDocument;->getDocumentTitleForFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 21
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v0, ".hybsinternal"

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string v0, "%s%s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string p2, "format(...)"

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance p2, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p2, v1, v0, v1}, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;-><init>(Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/metamoji/ui/cabinet/NoteListViewFragmentExt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragmentExt$$ExternalSyntheticLambda0;-><init>()V

    .line 24
    invoke-virtual {p2, v0}, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;->messageTitle(Lkotlin/jvm/functions/Function0;)Lcom/metamoji/ui/task/DynamicStreamSource$Builder;

    move-result-object p2

    new-instance v0, Lcom/metamoji/ui/cabinet/NoteListViewFragmentExt$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragmentExt$$ExternalSyntheticLambda1;-><init>()V

    .line 25
    invoke-virtual {p2, v0}, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;->positiveMessage(Lkotlin/jvm/functions/Function0;)Lcom/metamoji/ui/task/DynamicStreamSource$Builder;

    move-result-object p2

    new-instance v0, Lcom/metamoji/ui/cabinet/NoteListViewFragmentExt$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragmentExt$$ExternalSyntheticLambda2;-><init>()V

    .line 26
    invoke-virtual {p2, v0}, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;->negativeMessage(Lkotlin/jvm/functions/Function0;)Lcom/metamoji/ui/task/DynamicStreamSource$Builder;

    move-result-object p2

    .line 27
    new-instance v0, Lcom/metamoji/ui/cabinet/NoteListViewFragmentExt$dumpNoteForDebug$source$4;

    invoke-direct {v0, p0, p1, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragmentExt$dumpNoteForDebug$source$4;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;->saveTo(Lkotlin/jvm/functions/Function2;)Lcom/metamoji/ui/task/DynamicStreamSource$Builder;

    move-result-object p0

    .line 44
    invoke-virtual {p0}, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;->build()Lcom/metamoji/ui/task/DynamicStreamSource;

    move-result-object p0

    .line 45
    sget-object v1, Lcom/metamoji/ui/task/SaveTypedFileTask;->Companion:Lcom/metamoji/ui/task/SaveTypedFileTask$Companion;

    .line 46
    move-object v2, p0

    check-cast v2, Lcom/metamoji/ui/task/ISaveFileSource;

    .line 48
    const-string v5, ".hybsinternal"

    const/4 v6, 0x1

    .line 45
    const-string v4, "application/vnd.metamoji.hybsinternal"

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/ui/task/SaveTypedFileTask$Companion;->saveFile(Lcom/metamoji/ui/task/ISaveFileSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static final dumpNoteForDebug$lambda$0()Ljava/lang/String;
    .locals 1

    .line 24
    sget v0, Lcom/metamoji/noteanytime/R$string;->app_name:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static final dumpNoteForDebug$lambda$1()Ljava/lang/String;
    .locals 1

    .line 25
    const-string/jumbo v0, "\u30ce\u30fc\u30c8\u306e\u30c7\u30d0\u30c3\u30af\u66f8\u304d\u51fa\u3057\u306b\u6210\u529f\u3057\u307e\u3057\u305f\u3002"

    return-object v0
.end method

.method static final dumpNoteForDebug$lambda$2()Ljava/lang/String;
    .locals 1

    .line 26
    const-string/jumbo v0, "\u30ce\u30fc\u30c8\u306e\u30c7\u30d0\u30c3\u30af\u66f8\u304d\u51fa\u3057\u306b\u5931\u6557\u3057\u307e\u3057\u305f\u3002"

    return-object v0
.end method
