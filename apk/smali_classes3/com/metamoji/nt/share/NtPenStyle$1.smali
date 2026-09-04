.class Lcom/metamoji/nt/share/NtPenStyle$1;
.super Ljava/util/ArrayList;
.source "NtPenStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/share/NtPenStyle;->setPropertiesFrom(Ljava/util/Map;)V
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
.field final synthetic this$0:Lcom/metamoji/nt/share/NtPenStyle;

.field final synthetic val$value_:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/share/NtPenStyle;Ljava/lang/Object;)V
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

    .line 468
    iput-object p1, p0, Lcom/metamoji/nt/share/NtPenStyle$1;->this$0:Lcom/metamoji/nt/share/NtPenStyle;

    iput-object p2, p0, Lcom/metamoji/nt/share/NtPenStyle$1;->val$value_:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Lcom/metamoji/nt/share/NtPenStyle$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
