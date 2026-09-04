.class Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout$1;
.super Ljava/util/ArrayList;
.source "TextAndBackgroundColor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->onColorSelected(Ljava/lang/String;Ljava/lang/String;II)V
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
.field final synthetic this$1:Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;

.field final synthetic val$color_:I


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;I)V
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

    .line 145
    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout$1;->this$1:Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;

    iput p2, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout$1;->val$color_:I

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
