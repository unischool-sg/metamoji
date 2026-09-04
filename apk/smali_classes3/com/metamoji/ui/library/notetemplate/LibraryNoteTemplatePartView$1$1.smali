.class Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView$1$1;
.super Ljava/lang/Object;
.source "LibraryNoteTemplatePartView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView$1;

.field final synthetic val$bm:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView$1;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView$1$1;->this$1:Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView$1;

    iput-object p2, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView$1$1;->val$bm:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView$1$1;->this$1:Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView$1;

    iget-object v0, v0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView$1;->this$0:Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;

    invoke-static {v0}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->access$100(Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView$1$1;->val$bm:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
