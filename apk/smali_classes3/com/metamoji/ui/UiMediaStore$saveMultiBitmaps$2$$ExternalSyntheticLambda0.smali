.class public final synthetic Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lkotlin/sequences/Sequence;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroidx/documentfile/provider/DocumentFile;

.field public final synthetic f$4:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lkotlin/sequences/Sequence;Ljava/lang/String;Ljava/lang/String;Landroidx/documentfile/provider/DocumentFile;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2$$ExternalSyntheticLambda0;->f$0:Lkotlin/sequences/Sequence;

    iput-object p2, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2$$ExternalSyntheticLambda0;->f$3:Landroidx/documentfile/provider/DocumentFile;

    iput-object p5, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2$$ExternalSyntheticLambda0;->f$4:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2$$ExternalSyntheticLambda0;->f$0:Lkotlin/sequences/Sequence;

    iget-object v1, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2$$ExternalSyntheticLambda0;->f$3:Landroidx/documentfile/provider/DocumentFile;

    iget-object v4, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2$$ExternalSyntheticLambda0;->f$4:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;->invokeSuspend$lambda$1(Lkotlin/sequences/Sequence;Ljava/lang/String;Ljava/lang/String;Landroidx/documentfile/provider/DocumentFile;Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
