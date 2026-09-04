.class Lcom/metamoji/ui/ImportActivity$12;
.super Ljava/lang/Object;
.source "ImportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/ImportActivity;->onFailure(ZLjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/ImportActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/ImportActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 831
    iput-object p1, p0, Lcom/metamoji/ui/ImportActivity$12;->this$0:Lcom/metamoji/ui/ImportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 834
    iget-object p1, p0, Lcom/metamoji/ui/ImportActivity$12;->this$0:Lcom/metamoji/ui/ImportActivity;

    invoke-virtual {p1}, Lcom/metamoji/ui/ImportActivity;->finish()V

    return-void
.end method
