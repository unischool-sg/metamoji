.class Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter$ParseValueException;
.super Ljava/lang/RuntimeException;
.source "CvValueListIncomingSubconverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParseValueException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter;


# direct methods
.method public constructor <init>(Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter$ParseValueException;->this$0:Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 158
    const-string v0, "ParseValueException"

    return-object v0
.end method
