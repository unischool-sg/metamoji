.class Lcom/metamoji/ns/NsCollaboManager$KeyValue;
.super Ljava/lang/Object;
.source "NsCollaboManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ns/NsCollaboManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyValue"
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field pattern:Ljava/util/regex/Pattern;

.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboManager;

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1137
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$KeyValue;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1138
    const-string p1, "="

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$KeyValue;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1142
    iput-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$KeyValue;->key:Ljava/lang/String;

    .line 1143
    iput-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$KeyValue;->value:Ljava/lang/String;

    return-void
.end method

.method parse(Ljava/lang/String;)Z
    .locals 3

    .line 1147
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager$KeyValue;->clear()V

    .line 1148
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$KeyValue;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1149
    array-length v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1150
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$KeyValue;->key:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1151
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$KeyValue;->value:Ljava/lang/String;

    :cond_0
    return v0
.end method
