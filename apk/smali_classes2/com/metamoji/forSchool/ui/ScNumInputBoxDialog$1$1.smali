.class Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog$1$1;
.super Ljava/lang/Object;
.source "ScNumInputBoxDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog$1;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog$1;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog$1$1;->this$1:Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog$1$1;->this$1:Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog$1;->this$0:Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;

    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->-$$Nest$mrecalcSize(Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;)V

    return-void
.end method
