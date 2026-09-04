.class Lcom/metamoji/ui/library/item/LibraryViewDialog$6$3;
.super Ljava/lang/Object;
.source "LibraryViewDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryViewDialog$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/library/item/LibraryViewDialog$6;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryViewDialog$6;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1119
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$6$3;->this$1:Lcom/metamoji/ui/library/item/LibraryViewDialog$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1122
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$6$3;->this$1:Lcom/metamoji/ui/library/item/LibraryViewDialog$6;

    iget-object v0, v0, Lcom/metamoji/ui/library/item/LibraryViewDialog$6;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->dismiss()V

    return-void
.end method
