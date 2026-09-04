.class public final synthetic Lcom/metamoji/un/video/UnVideoUtils$Companion$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/nt/NtEditorWindowController;

.field public final synthetic f$1:Lcom/metamoji/cm/CmContext;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/CmContext;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$$ExternalSyntheticLambda4;->f$0:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p2, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$$ExternalSyntheticLambda4;->f$1:Lcom/metamoji/cm/CmContext;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$$ExternalSyntheticLambda4;->f$0:Lcom/metamoji/nt/NtEditorWindowController;

    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$$ExternalSyntheticLambda4;->f$1:Lcom/metamoji/cm/CmContext;

    check-cast p1, Lcom/metamoji/video/AmvFrameExtractor;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Landroid/graphics/Bitmap;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->execVideoFinish$lambda$4$lambda$3(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/CmContext;Lcom/metamoji/video/AmvFrameExtractor;ILandroid/graphics/Bitmap;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
