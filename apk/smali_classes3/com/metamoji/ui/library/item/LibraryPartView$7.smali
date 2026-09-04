.class Lcom/metamoji/ui/library/item/LibraryPartView$7;
.super Ljava/lang/Object;
.source "LibraryPartView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryPartView;->downloadThumbnail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryPartView;

.field final synthetic val$thumbnailPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryPartView;Ljava/lang/String;)V
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

    .line 327
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPartView$7;->this$0:Lcom/metamoji/ui/library/item/LibraryPartView;

    iput-object p2, p0, Lcom/metamoji/ui/library/item/LibraryPartView$7;->val$thumbnailPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPartView$7;->this$0:Lcom/metamoji/ui/library/item/LibraryPartView;

    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPartView$7;->val$thumbnailPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/library/item/LibraryPartView;->updateThumbnail(Ljava/lang/String;)V

    return-void
.end method
