.class Lcom/metamoji/ui/dialog/ShapeSettings$28;
.super Ljava/util/ArrayList;
.source "ShapeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/ShapeSettings;->initDlgValues()V
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
.field final synthetic this$0:Lcom/metamoji/ui/dialog/ShapeSettings;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/ShapeSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 818
    iput-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings$28;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, p1, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/ShapeSettings$28;->add(Ljava/lang/Object;)Z

    return-void
.end method
