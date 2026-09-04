.class Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog$5;
.super Ljava/lang/Object;
.source "ScNumInputBoxDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->setClickListener(Landroid/view/View;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;

.field final synthetic val$code:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;Ljava/lang/String;)V
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

    .line 215
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog$5;->this$0:Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog$5;->val$code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 218
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog$5;->this$0:Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog$5;->val$code:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->-$$Nest$mbuttonTapped(Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;Ljava/lang/String;)V

    return-void
.end method
