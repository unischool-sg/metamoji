.class Lcom/metamoji/mazec/UserDictionaryActivity$3;
.super Ljava/lang/Object;
.source "UserDictionaryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/UserDictionaryActivity;->createEditWordDialog(Landroid/content/Context;Lcom/metamoji/mazec/converter/MmjiWord;)Landroidx/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/UserDictionaryActivity;

.field final synthetic val$w:Lcom/metamoji/mazec/converter/MmjiWord;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/UserDictionaryActivity;Lcom/metamoji/mazec/converter/MmjiWord;)V
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

    .line 165
    iput-object p1, p0, Lcom/metamoji/mazec/UserDictionaryActivity$3;->this$0:Lcom/metamoji/mazec/UserDictionaryActivity;

    iput-object p2, p0, Lcom/metamoji/mazec/UserDictionaryActivity$3;->val$w:Lcom/metamoji/mazec/converter/MmjiWord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 167
    iget-object p2, p0, Lcom/metamoji/mazec/UserDictionaryActivity$3;->this$0:Lcom/metamoji/mazec/UserDictionaryActivity;

    iget-object v0, p0, Lcom/metamoji/mazec/UserDictionaryActivity$3;->val$w:Lcom/metamoji/mazec/converter/MmjiWord;

    invoke-static {p2, p1, v0}, Lcom/metamoji/mazec/UserDictionaryActivity;->-$$Nest$monUpdate(Lcom/metamoji/mazec/UserDictionaryActivity;Landroid/content/DialogInterface;Lcom/metamoji/mazec/converter/MmjiWord;)V

    return-void
.end method
