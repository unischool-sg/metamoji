.class Lcom/metamoji/mazec/UserDictionaryActivity$1;
.super Ljava/lang/Object;
.source "UserDictionaryActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/UserDictionaryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/UserDictionaryActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/UserDictionaryActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/metamoji/mazec/UserDictionaryActivity$1;->this$0:Lcom/metamoji/mazec/UserDictionaryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 80
    check-cast p1, Landroid/widget/ListView;

    .line 81
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/mazec/converter/MmjiWord;

    .line 83
    iget-object p2, p0, Lcom/metamoji/mazec/UserDictionaryActivity$1;->this$0:Lcom/metamoji/mazec/UserDictionaryActivity;

    invoke-static {p2, p2, p1}, Lcom/metamoji/mazec/UserDictionaryActivity;->-$$Nest$mcreateEditWordDialog(Lcom/metamoji/mazec/UserDictionaryActivity;Landroid/content/Context;Lcom/metamoji/mazec/converter/MmjiWord;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method
