.class Lcom/metamoji/ui/dialog/TextColor$2;
.super Ljava/util/ArrayList;
.source "TextColor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/TextColor;->onColorSelected(Ljava/lang/String;Ljava/lang/String;II)V
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

.field final synthetic val$color_:I


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/TextColor;I)V
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

    .line 167
    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextColor$2;->this$0:Lcom/metamoji/ui/dialog/TextColor;

    iput p2, p0, Lcom/metamoji/ui/dialog/TextColor$2;->val$color_:I

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/TextColor$2;->add(Ljava/lang/Object;)Z

    return-void
.end method
