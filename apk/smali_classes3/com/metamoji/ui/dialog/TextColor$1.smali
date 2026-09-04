.class Lcom/metamoji/ui/dialog/TextColor$1;
.super Ljava/util/ArrayList;
.source "TextColor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/TextColor;-><init>(Ljava/lang/Integer;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/TextColor;

.field final synthetic val$color:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/TextColor;Ljava/lang/Integer;)V
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

    .line 86
    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextColor$1;->this$0:Lcom/metamoji/ui/dialog/TextColor;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/TextColor$1;->val$color:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/dialog/TextColor$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
