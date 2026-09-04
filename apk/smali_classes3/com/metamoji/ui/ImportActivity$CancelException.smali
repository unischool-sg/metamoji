.class Lcom/metamoji/ui/ImportActivity$CancelException;
.super Ljava/lang/Exception;
.source "ImportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/ImportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/ImportActivity;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/ImportActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1520
    iput-object p1, p0, Lcom/metamoji/ui/ImportActivity$CancelException;->this$0:Lcom/metamoji/ui/ImportActivity;

    .line 1521
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method
