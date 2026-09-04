.class public final synthetic Lcom/metamoji/ui/WebPageActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/ui/WebPageActivity;

.field public final synthetic f$1:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/ui/WebPageActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/WebPageActivity$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/ui/WebPageActivity;

    iput-object p2, p0, Lcom/metamoji/ui/WebPageActivity$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final onPixelCopyFinished(I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/ui/WebPageActivity$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/ui/WebPageActivity;

    iget-object v1, p0, Lcom/metamoji/ui/WebPageActivity$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, p1}, Lcom/metamoji/ui/WebPageActivity;->$r8$lambda$kyrsJ9LUZ0CSRqK5EQSHinBFEbc(Lcom/metamoji/ui/WebPageActivity;Landroid/graphics/Bitmap;I)V

    return-void
.end method
