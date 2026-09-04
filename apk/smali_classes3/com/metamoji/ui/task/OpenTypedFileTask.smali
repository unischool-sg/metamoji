.class public final Lcom/metamoji/ui/task/OpenTypedFileTask;
.super Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;
.source "OpenTypedFileTask.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/task/OpenTypedFileTask$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOpenTypedFileTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OpenTypedFileTask.kt\ncom/metamoji/ui/task/OpenTypedFileTask\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,128:1\n1#2:129\n11705#3:130\n12052#3,3:131\n*S KotlinDebug\n*F\n+ 1 OpenTypedFileTask.kt\ncom/metamoji/ui/task/OpenTypedFileTask\n*L\n33#1:130\n33#1:131,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u001f\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0008\u0008\u0003\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u000bH\u0086@\u00a2\u0006\u0002\u0010\u0013J \u0010\u0012\u001a\u00020\u00142\u0018\u0010\u0015\u001a\u0014\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00140\u0016J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u000bH\u0002J\u000e\u0010\u001b\u001a\u00020\u0019H\u0094@\u00a2\u0006\u0002\u0010\u0013R\u0016\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\tR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R!\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00040\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/metamoji/ui/task/OpenTypedFileTask;",
        "Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;",
        "extensions",
        "",
        "",
        "retryMessage",
        "",
        "<init>",
        "([Ljava/lang/String;I)V",
        "[Ljava/lang/String;",
        "result",
        "Landroid/net/Uri;",
        "mimeTypes",
        "",
        "getMimeTypes",
        "()Ljava/util/List;",
        "mimeTypes$delegate",
        "Lkotlin/Lazy;",
        "openFile",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "fileOpened",
        "Lkotlin/Function2;",
        "Landroidx/fragment/app/FragmentActivity;",
        "checkType",
        "",
        "uri",
        "execute",
        "Companion",
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
.field public static final Companion:Lcom/metamoji/ui/task/OpenTypedFileTask$Companion;

.field public static final TASK_NAME:Ljava/lang/String;


# instance fields
.field private final extensions:[Ljava/lang/String;

.field private final mimeTypes$delegate:Lkotlin/Lazy;

.field private result:Landroid/net/Uri;

.field private final retryMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ui/task/OpenTypedFileTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ui/task/OpenTypedFileTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ui/task/OpenTypedFileTask;->Companion:Lcom/metamoji/ui/task/OpenTypedFileTask$Companion;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/metamoji/ui/task/OpenTypedFileTask;->TASK_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 7

    const-string v0, "extensions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v2, Lcom/metamoji/ui/task/OpenTypedFileTask;->TASK_NAME:Ljava/lang/String;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;-><init>(Ljava/lang/String;Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    iput-object p1, v1, Lcom/metamoji/ui/task/OpenTypedFileTask;->extensions:[Ljava/lang/String;

    .line 29
    iput p2, v1, Lcom/metamoji/ui/task/OpenTypedFileTask;->retryMessage:I

    .line 32
    new-instance p1, Lcom/metamoji/ui/task/OpenTypedFileTask$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/task/OpenTypedFileTask$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ui/task/OpenTypedFileTask;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, v1, Lcom/metamoji/ui/task/OpenTypedFileTask;->mimeTypes$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>([Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 29
    sget p2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_THIS_IS_NOT_A_MMJ_FILE_ARE_YOU_OK:I

    .line 27
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/task/OpenTypedFileTask;-><init>([Ljava/lang/String;I)V

    return-void
.end method

.method private final checkType(Landroid/net/Uri;)Z
    .locals 8

    .line 94
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 97
    :cond_0
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 98
    const-string v3, "*/*"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/metamoji/ui/task/OpenTypedFileTask;->getMimeTypes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 104
    :cond_1
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    .line 105
    :cond_2
    iget-object v1, p0, Lcom/metamoji/ui/task/OpenTypedFileTask;->extensions:[Ljava/lang/String;

    array-length v3, v1

    move v4, v0

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v3, :cond_4

    aget-object v6, v1, v4

    const/4 v7, 0x2

    invoke-static {p1, v6, v0, v7, v5}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v6

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz v5, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public static final create([Ljava/lang/String;)Lcom/metamoji/ui/task/OpenTypedFileTask;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/OpenTypedFileTask;->Companion:Lcom/metamoji/ui/task/OpenTypedFileTask$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/task/OpenTypedFileTask$Companion;->create([Ljava/lang/String;)Lcom/metamoji/ui/task/OpenTypedFileTask;

    move-result-object p0

    return-object p0
.end method

.method static final execute$lambda$3(Lcom/metamoji/ui/task/OpenTypedFileTask;Lcom/metamoji/lib/dialog/UtDialogOwner;)Lcom/metamoji/lib/dialog/UtMessageBox;
    .locals 8

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialogOwner;->asContext()Landroid/content/Context;

    move-result-object p1

    iget p0, p0, Lcom/metamoji/ui/task/OpenTypedFileTask;->retryMessage:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string p0, "getString(...)"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    sget-object v0, Lcom/metamoji/lib/dialog/UtMessageBox;->Companion:Lcom/metamoji/lib/dialog/UtMessageBox$Companion;

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lcom/metamoji/lib/dialog/UtMessageBox$Companion;->createForYesNo$default(Lcom/metamoji/lib/dialog/UtMessageBox$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/metamoji/lib/dialog/UtMessageBox;

    move-result-object p0

    return-object p0
.end method

.method private final getMimeTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/metamoji/ui/task/OpenTypedFileTask;->mimeTypes$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method static final mimeTypes_delegate$lambda$1(Lcom/metamoji/ui/task/OpenTypedFileTask;)Ljava/util/List;
    .locals 4

    .line 33
    iget-object p0, p0, Lcom/metamoji/ui/task/OpenTypedFileTask;->extensions:[Ljava/lang/String;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 131
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 33
    invoke-static {v3}, Lcom/metamoji/noteanytime/cm/CmMimeType;->getMimeTypeByExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_0
    check-cast v0, Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
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

    instance-of v0, p1, Lcom/metamoji/ui/task/OpenTypedFileTask$execute$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/ui/task/OpenTypedFileTask$execute$1;

    iget v1, v0, Lcom/metamoji/ui/task/OpenTypedFileTask$execute$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/metamoji/ui/task/OpenTypedFileTask$execute$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/metamoji/ui/task/OpenTypedFileTask$execute$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/ui/task/OpenTypedFileTask$execute$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/task/OpenTypedFileTask$execute$1;-><init>(Lcom/metamoji/ui/task/OpenTypedFileTask;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/metamoji/ui/task/OpenTypedFileTask$execute$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 108
    iget v2, v0, Lcom/metamoji/ui/task/OpenTypedFileTask$execute$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v2, v0, Lcom/metamoji/ui/task/OpenTypedFileTask$execute$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 110
    :cond_4
    new-instance p1, Lcom/metamoji/ui/task/OpenTypedFileTask$execute$uri$1;

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Lcom/metamoji/ui/task/OpenTypedFileTask$execute$uri$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iput-object v2, v0, Lcom/metamoji/ui/task/OpenTypedFileTask$execute$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/metamoji/ui/task/OpenTypedFileTask$execute$1;->label:I

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/task/OpenTypedFileTask;->withOwner(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    check-cast p1, Landroid/net/Uri;

    if-nez p1, :cond_6

    .line 113
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 114
    :cond_6
    invoke-direct {p0, p1}, Lcom/metamoji/ui/task/OpenTypedFileTask;->checkType(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 115
    iput-object p1, p0, Lcom/metamoji/ui/task/OpenTypedFileTask;->result:Landroid/net/Uri;

    .line 116
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 118
    :cond_7
    sget-object v2, Lcom/metamoji/ui/task/OpenTypedFileTask;->TASK_NAME:Ljava/lang/String;

    new-instance v6, Lcom/metamoji/ui/task/OpenTypedFileTask$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/metamoji/ui/task/OpenTypedFileTask$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/ui/task/OpenTypedFileTask;)V

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/ui/task/OpenTypedFileTask$execute$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/metamoji/ui/task/OpenTypedFileTask$execute$1;->label:I

    invoke-virtual {p0, v2, v6, v0}, Lcom/metamoji/ui/task/OpenTypedFileTask;->showDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    :goto_2
    return-object v1

    .line 108
    :cond_8
    :goto_3
    check-cast p1, Lcom/metamoji/lib/dialog/UtMessageBox;

    .line 123
    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtMessageBox;->getStatus()Lcom/metamoji/lib/dialog/IUtDialog$Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/IUtDialog$Status;->getNegative()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 124
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final openFile(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/metamoji/ui/task/OpenTypedFileTask$openFile$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/ui/task/OpenTypedFileTask$openFile$1;

    iget v1, v0, Lcom/metamoji/ui/task/OpenTypedFileTask$openFile$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/metamoji/ui/task/OpenTypedFileTask$openFile$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/metamoji/ui/task/OpenTypedFileTask$openFile$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/ui/task/OpenTypedFileTask$openFile$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/task/OpenTypedFileTask$openFile$1;-><init>(Lcom/metamoji/ui/task/OpenTypedFileTask;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/metamoji/ui/task/OpenTypedFileTask$openFile$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 70
    iget v2, v0, Lcom/metamoji/ui/task/OpenTypedFileTask$openFile$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

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
    iput v3, v0, Lcom/metamoji/ui/task/OpenTypedFileTask$openFile$1;->label:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/task/OpenTypedFileTask;->fireAsync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 72
    iget-object p1, p0, Lcom/metamoji/ui/task/OpenTypedFileTask;->result:Landroid/net/Uri;

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public final openFile(Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/fragment/app/FragmentActivity;",
            "-",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fileOpened"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->getImmortalTaskScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/metamoji/ui/task/OpenTypedFileTask$openFile$2;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/metamoji/ui/task/OpenTypedFileTask$openFile$2;-><init>(Lcom/metamoji/ui/task/OpenTypedFileTask;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
